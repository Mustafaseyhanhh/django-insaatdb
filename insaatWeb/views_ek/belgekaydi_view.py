from django.shortcuts import render
from insaatWeb import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages
from datetime import datetime,date

from insaatWeb.models import Belge_Kaydi, Belge_Kaydi_File,Yonetici



def belge_kayitlar(request):
    request.session["menu1"]=8
    record=models.Belge_Kaydi.objects.all()
    fil=[]
    for i in record:
        fil.append(len(models.Belge_Kaydi_File.objects.filter(kayit=i)))
    record=zip(record,fil)
    return render(request,'belge_kaydi_kayitlar.html',
        context={
        "record":record,
        }, # num_visits appended
    )

def belge_kayitlar_ekle(request):
    request.session["menu1"]=8
    return render(request,'belge_kaydi_kayitlar_ekle.html',
        context={
        }, # num_visits appended
    )

def belge_kayitlar_ekle_fuc(request):
    if "tur" in request.POST.keys():
        new=Belge_Kaydi(    ekleyen=models.Yonetici.objects.filter(id=int(request.session["id"]))[0],
                            tur=request.POST["tur"],
                            #tarih=request.POST["tarih"],
                            konu=request.POST["konu"],
                            kime=request.POST["kime"]
                        )
        new.save()
        if "dosya" in request.FILES.keys():
            for i in request.FILES.getlist("dosya"):
                i.name=i.name.lower().replace("ş","s").replace("ç","c").replace("ı","i").replace(" ","-")
                dosya=Belge_Kaydi_File( kayit=new,
                                        belge=i
                                    )
                dosya.save()
        return HttpResponseRedirect('/belge/kayitlar')
    else:
        return HttpResponseRedirect('/belge/kayitlar/ekle')
        

def belge_kayitlar_duzenle(request,id):
    record=models.Belge_Kaydi.objects.filter(id=id)[0]
    file=models.Belge_Kaydi_File.objects.filter(kayit=record)
    return render(request,'belge_kaydi_kayitlar_duzenle.html',
        context={
        "record":record,
        "file":file
        }, # num_visits appended
    )
    
def belge_kayitlar_duzenle_fuc(request,id):
    new=models.Belge_Kaydi.objects.filter(id=id)[0]
    new.tur=request.POST["tur"]
    #new.tarih=request.POST["tarih"]
    new.konu=request.POST["konu"]
    new.kime=request.POST["kime"]
    new.save()
    if "dosya" in request.FILES.keys():
        for i in request.FILES.getlist("dosya"):
            i.name=i.name.lower().replace("ş","s").replace("ç","c").replace("ı","i").replace(" ","-")
            dosya=Belge_Kaydi_File( kayit=new,
                                    belge=i
                                )
            dosya.save()
    return HttpResponseRedirect('/belge/kayitlar')


def belge_kayitlar_sil_fuc(request,id):
    new=models.Belge_Kaydi.objects.filter(id=id)[0]
    new.delete()
    return HttpResponseRedirect('/belge/kayitlar')
    
def belge_giden(request):
    request.session["menu1"]=8
    record=models.Belge_Kaydi.objects.filter(tur=1)
    fil=[]
    for i in record:
        fil.append(len(models.Belge_Kaydi_File.objects.filter(kayit=i)))
    record=zip(record,fil)
    return render(request,'belge_kaydi_kayitlar.html',
        context={
        "record":record,
        }, # num_visits appended
    )
    
def belge_gelen(request):
    request.session["menu1"]=8
    record=models.Belge_Kaydi.objects.filter(tur=0)
    fil=[]
    for i in record:
        fil.append(len(models.Belge_Kaydi_File.objects.filter(kayit=i)))
    record=zip(record,fil)
    return render(request,'belge_kaydi_kayitlar.html',
        context={
        "record":record,
        }, # num_visits appended
    )
    
def belge_yukle(request):
    pass
    
def belge_yukle_dosya_sil(request,id):
    new=models.Belge_Kaydi_File.objects.filter(id=id)[0]
    new.delete()
    return HttpResponseRedirect('/belge/kayitlar/duzenle/'+str(new.kayit.id))

    
def belge_yukle_tek(request,id):
    pass
    
