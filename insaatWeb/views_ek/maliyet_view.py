from django.shortcuts import render
from insaatWeb import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages
from datetime import datetime,date
import random,os,filetype
from insaatWeb.models import Projeler,Bloklar,Daireler,Satis,Ariza_Takip,Tapu_Satis,Maliyet_Projeler,Maliyet_Kategori,Maliyet_Madde,Maliyet_Kayit

def maliyet_projeler(request):
    projeler=models.Projeler.objects.all()
    record=models.Maliyet_Projeler.objects.all()
    return render(request,'maliyet_projeler.html',
        context={
        "projeler":projeler,
        "record":record,

        }, # num_visits appended
    )

def maliyet_projeler_ekle_fuc(request):
    if request.POST["proje"]:
        a=models.Projeler.objects.filter(id=int(request.POST["proje"]))[0]
        if models.Maliyet_Projeler.objects.filter(projeadi=a):
            messages.error(request, 'Bu projeye daha önce maliyet projesi eklenmiştir.')
            return HttpResponseRedirect('/maliyet/projeler')
        else:
            new=Maliyet_Projeler(projeadi=models.Projeler.objects.filter(id=int(request.POST["proje"]))[0],reelmaliyet=request.POST["maliyet"])
            new.save()
            messages.warning(request, '{} paroje maliyeti başarıyla eklendi.'.format(request.POST["proje"]))
            return HttpResponseRedirect('/maliyet/projeler')
    else:
        messages.error(request, 'Lütfen proje ismi seçiniz')
        return HttpResponseRedirect('/maliyet/projeler')

def maliyet_projeler_duzenle_fuc(request):
    if "btduzenle" in request.POST.keys():
        a=models.Maliyet_Projeler.objects.filter(id=int(request.POST["id"]))[0]
        a.reelmaliyet=request.POST["proje"]
        a.save()
        messages.warning(request, 'Proje Maliyeti başarı ile güncellendi.')
    elif "btsil" in request.POST.keys():
        pid=int(request.POST["id"])
        pname=request.POST["proje"]
        print (pid)
        new=models.Maliyet_Projeler.objects.filter(id=pid)[0]
        new.delete()
        messages.warning(request, '{} projesi maliyeti silindi .'.format(pname))
    return HttpResponseRedirect('/maliyet/projeler')

def maliyet_projeler_kategori(request,pid):
    proje=models.Maliyet_Projeler.objects.filter(projeadi__id=pid)[0]
    kategoriler=models.Maliyet_Kategori.objects.all()
    return render(request,'maliyet_projeler_kategori.html',
        context={
        "proje":proje,
        "kategoriler":kategoriler,

        }, # num_visits appended
    )

def maliyet_projeler_kategori_eklefuc(request,pid):
    if request.POST["kategori"]:
        if models.Maliyet_Kategori.objects.filter(adi=request.POST["kategori"]):
            messages.error(request, 'Bu kategori daha önce eklenmiştir.')
            return HttpResponseRedirect('/maliyet/projeler/'+str(pid)+'/kategoriler')
        else:
            new=Maliyet_Kategori(adi=request.POST["kategori"])
            new.save()
            messages.warning(request, '{} kategorisi başarıyla eklendi.'.format(request.POST["kategori"]))
            return HttpResponseRedirect('/maliyet/projeler/'+str(pid)+'/kategoriler')
    else:
        messages.error(request, 'Lütfen kategori ismi giriniz.')
        return HttpResponseRedirect('/maliyet/projeler/'+str(pid)+'/kategoriler')

def maliyet_projeler_kategori_duzenlefuc(request,pid):
    if "btduzenle" in request.POST.keys():
        a=models.Maliyet_Kategori.objects.filter(id=int(request.POST["id"]))[0]
        a.adi=request.POST["kategori"]
        a.save()
        messages.warning(request, 'Maliyet kategorisi başarı ile güncellendi.')
    elif "btsil" in request.POST.keys():
        idd=int(request.POST["id"])
        pname=request.POST["kategori"]
        print (idd)
        new=models.Maliyet_Kategori.objects.filter(id=idd)[0]
        new.delete()
        messages.warning(request, '{} kategorisi silindi .'.format(pname))
    return HttpResponseRedirect('/maliyet/projeler/'+str(pid)+'/kategoriler')

def maliyet_projeler_kategori_katid(request,pid,katid):
    proje=models.Projeler.objects.filter(id=pid)[0]
    print("*"*30)
    maddeler=models.Maliyet_Madde.objects.filter(kategori__id=katid)
    kategori=models.Maliyet_Kategori.objects.filter(id=katid)[0]
    kayitlar=models.Maliyet_Kayit.objects.filter(projeid__projeadi=proje).filter(kategori=kategori)
    return render(request,'maliyet_projeler_kategori_madde.html',
        context={
        "proje":proje,
        "kategori":kategori,
        "maddeler":maddeler,
        "kayitlar":kayitlar,

        }, # num_visits appended
    )

def maliyet_projeler_kategori_katid_maddeekle_fuc(request,pid,katid):
    if request.POST["madde"]:
        a=models.Maliyet_Kategori.objects.filter(id=katid)[0]
        if models.Maliyet_Madde.objects.filter(adi=request.POST["madde"]):
            messages.error(request, 'Bu kategiye bu madde daha önce eklenmiştir.')
            return HttpResponseRedirect('/maliyet/projeler/'+str(pid)+'/kategoriler/'+str(katid))
        else:
            new=Maliyet_Madde(adi=request.POST["madde"],kategori=a)
            new.save()
            messages.warning(request, '{} maddesi başarıyla eklendi.'.format(request.POST["madde"]))
            return HttpResponseRedirect('/maliyet/projeler/'+str(pid)+'/kategoriler/'+str(katid))
    else:
        messages.error(request, 'Lütfen proje ismi seçiniz')
        return HttpResponseRedirect('/maliyet/projeler/'+str(pid)+'/kategoriler/'+str(katid))


def maliyet_projeler_kategori_katid_maddesil_fuc(request,pid,katid):
    if "btduzenle" in request.POST.keys():
        a=models.Maliyet_Madde.objects.filter(id=int(request.POST["id"]))[0]
        a.adi=request.POST["madde"]
        a.save()
        messages.warning(request, 'Madde adı başarı ile güncellendi.')
    elif "btsil" in request.POST.keys():
        idd=int(request.POST["id"])
        pname=request.POST["madde"]
        print (idd)
        new=models.Maliyet_Madde.objects.filter(id=idd)[0]
        new.delete()
        messages.warning(request, '{} maddesi silindi .'.format(pname))
    return HttpResponseRedirect('/maliyet/projeler/'+str(pid)+'/kategoriler/'+str(katid))

def maliyet_projeler_kategori_katid_maddeid_ekle(request,pid,katid,maddeid):
    

    ekleyen=models.Yonetici.objects.filter(id=int(request.session["id"]))[0]
    projeid=models.Maliyet_Projeler.objects.filter(projeadi__id=pid)[0]
    kategori=models.Maliyet_Kategori.objects.filter(id=katid)[0]
    maddeid=models.Maliyet_Madde.objects.filter(id=maddeid)[0]
    birimfiyat=request.POST["birimfiyat"].replace(",",".")
    adet=request.POST["adet"]
    hakkinda=request.POST["hakkinda"]
    new=Maliyet_Kayit(  ekleyen=ekleyen,
                        projeid=projeid,
                        kategori=kategori,
                        maddeid=maddeid,
                        birimfiyat=birimfiyat,
                        adet=adet,
                        hakkinda=hakkinda)
    new.save()
    print (request.POST)
    return HttpResponseRedirect('/maliyet/projeler/'+str(pid)+'/kategoriler/'+str(katid))

def maliyet_projeler_kategori_katid_maddeid_sil(request,pid,kayitid):
    new=models.Maliyet_Kayit.objects.filter(id=kayitid)[0]

    new.delete()
    return HttpResponseRedirect('/maliyet/projeler/'+str(pid)+'/kategoriler/'+str(katid))