from django.shortcuts import render
from insaatWeb import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages

from insaatWeb.models import Santiyeler,Santiye_Takip,Yonetici

def santiyeler(request):
    request.session["menu1"]=3
    santiyeler=models.Santiyeler.objects.all()
    if not santiyeler:
        messages.info(request, 'Henüz Şantiye Eklenmedi.')
    return render(request,'santiyeler.html',
        context={
        "santiyeler":santiyeler,
        }, # num_visits appended
    )

def santiyeler_ekle_fuc(request):
    pname=request.POST["pname"]
    new=Santiyeler(adi=pname)
    new.save()
    messages.success(request, '{} şantiyesi başarı ile eklendi.'.format(pname))
    return HttpResponseRedirect('/santiyeler')

def santiyeler_duzenle_fuc(request):
    if request.POST:
        pname=request.POST["pname"]
        pid=request.POST["id"]
        if "btduzenle" in request.POST.keys():
            new=models.Santiyeler.objects.filter(id=int(pid))[0]
            lastname=new.adi
            new.adi=pname
            new.save()
            messages.success(request, '{} şantiyesi {} olarak değiştirildi .'.format(lastname,pname))
        elif "btsil" in request.POST.keys():
            satis_santiyeler_sil_fuc(request)
    else:
        messages.error(request, 'Hatalı url girildi')
    return HttpResponseRedirect('/santiyeler')

def satis_santiyeler_sil_fuc(request):
    pid=int(request.POST["id"])
    pname=request.POST["pname"]
    new=models.Santiyeler.objects.filter(id=pid)[0]
    new.delete()
    messages.warning(request, '{} şantiyesi silindi .'.format(pname))
    return HttpResponseRedirect('/santiyeler')

def santiyeler_malzemeler(request):
    request.session["menu1"]=3
    malzemeler=models.Santiye_Takip.objects.all()
    return render(request,'malzemeler.html',
        context={
        "malzemeler":malzemeler,
        }, # num_visits appended
    )

def santiyeler_malzemeler_fuc(request,id):
    santiye=models.Santiyeler.objects.filter(id=id)[0]
    malzemeler=models.Santiye_Takip.objects.filter(santiyeid=santiye)
    return render(request,'malzemeler_fuc.html',
        context={
        "malzemeler":malzemeler,
        "santiye":santiye,
        }, # num_visits appended
    )

def santiyeler_malzemeler_giris(request):
    request.session["menu1"]=3
    santiyeler=models.Santiyeler.objects.all()
    turu=["Diğer","TON","KG","PAKET","ADET","SAAT"]
                
    return render(request,'malzeme_ekle.html',
        context={
        "santiyeler":santiyeler,
        "turu":turu,
        }, # num_visits appended
    )

def santiyeler_malzemeler_giris_ekle_fuc(request):
    x=request.POST.getlist("malzemeadi")
    y=request.POST.getlist("malzememiktari")
    z=request.POST.getlist("malzememiktari2")
    print(len(x))
    santiye=models.Santiyeler.objects.filter(id=int(request.POST["santiyeid"]))[0]
    for i, j, k in zip(x, y, z):
        new=Santiye_Takip(   editorid=models.Yonetici.objects.filter(id=int(request.session["id"]))[0], 
                             santiyeid=santiye,
                             tarih=request.POST["tarih"],
                             faturano=request.POST["faturano"],
                             irsaliyeno=request.POST["irsaliyeno"],
                             tedarikci=request.POST["tedarikci"],
                             malzemeadi=i,
                             malzememiktari=j+" "+k,
        )
        new.save()
        messages.success(request, 'Malzemeler başarı ile eklendi.')
    if "hide" in request.POST.keys():
        return HttpResponseRedirect('/santiyeler/malzemeler/'+str(santiye.id))
    else:
        return HttpResponseRedirect('/santiyeler/malzemeler')


def santiyeler_malzemeler_giris_fuc(request,id):
    request.session["menu1"]=3
    return render(request,'malzeme_ekle.html',
        context={
        }, # num_visits appended
    )

def  santiyeler_malzemeler_giris_id(request,id):
    santiye=models.Santiyeler.objects.filter(id=id)[0]
    turu=["Diğer","TON","KG","PAKET","ADET","SAAT"]
    return render(request,'malzeme_ekle_id.html',
        context={
        "santiye":santiye,
        "turu":turu,
        }, # num_visits appended
    )

def santiye_malzeme_sil(request,id):
    a=models.Santiye_Takip.objects.filter(id=id)[0]
    a.delete()
    messages.error(request, 'Silme işlemi başarılı.')
    return HttpResponseRedirect('/santiyeler/malzemeler')

def santiye_malzeme_sil_id(request,id):
    a=models.Santiye_Takip.objects.filter(id=id)[0]
    x=str(a.santiyeid_id)
    a.delete()
    messages.error(request, 'Silme işlemi başarılı.')
    return HttpResponseRedirect('/santiyeler/malzemeler/'+x)

def santiye_malzeme_duzenle(request,id):
    malzeme=models.Santiye_Takip.objects.filter(id=id)[0]
    return render(request,'malzeme_duzenle.html',
        context={
        "malzeme":malzeme,
        }, # num_visits appended
    )

def santiye_malzeme_duzenle_fuc(request,id):
    malzeme=models.Santiye_Takip.objects.filter(id=id)[0]
    malzeme.faturano=request.POST["faturano"]
    malzeme.irsaliyeno=request.POST["irsaliyeno"]
    malzeme.tedarikci=request.POST["tedarikci"]
    malzeme.malzemeadi=request.POST["malzemeadi"]
    x=malzeme.malzememiktari.split(" ")
    malzeme.malzememiktari=request.POST["malzememiktari"]+" "+x[-1]
    malzeme.save()
    messages.success(request, 'Düzenleme işlemi başarılı.')

    return HttpResponseRedirect('/santiyeler/malzemeler')