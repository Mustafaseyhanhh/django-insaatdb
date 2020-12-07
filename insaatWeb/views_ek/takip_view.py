from django.shortcuts import render
from insaatWeb import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages
from time import gmtime, strftime

from insaatWeb.models import Projeler,Bloklar,Daireler,Ariza_Takip,Yonetici

def takip(request):
    request.session["menu1"]=4
    record=models.Ariza_Takip.objects.all().order_by("-id")
    return render(request,'takip_kayitlari.html',
        context={
        "record":record
        }, # num_visits appended
    )

def takip_devam(request):
    request.session["menu1"]=4
    record=models.Ariza_Takip.objects.filter(durum=0).order_by("-id")
    return render(request,'takip_kayitlari.html',
        context={
        "record":record
        }, # num_visits appended
    )

def takip_gider(request):
    request.session["menu1"]=4
    record=models.Ariza_Takip.objects.filter(durum=-1).order_by("-id")
    return render(request,'takip_kayitlari.html',
        context={
        "record":record
        }, # num_visits appended
    )

def takip_bekle(request):
    request.session["menu1"]=4
    record=models.Ariza_Takip.objects.filter(durum=1).order_by("-id")
    return render(request,'takip_kayitlari.html',
        context={
        "record":record
        }, # num_visits appended
    )


def takip_olustur(request,pid,blokid,no):
    pid=models.Projeler.objects.filter(id=pid)[0]
    blok=models.Bloklar.objects.filter(id=blokid)[0]
    no=models.Daireler.objects.filter(blokid=blok,no=no)[0]
    return render(request,'takip_kayitlari_olustur.html',
        context={
        "pid":pid,
        "blok":blok,
        "no":no
        }, # num_visits appended
    )

def takip_olustur_fuc(request,pid,blokid,no):
    blok=models.Bloklar.objects.filter(id=blokid)[0]
    no=models.Daireler.objects.filter(blokid=blok,no=no)[0]
    print(request.POST,request.FILES)
    new=Ariza_Takip(
                    daireid =no,
                    ekleyen = models.Yonetici.objects.filter(id=int(request.session["id"]))[0],
                    guncelleyen=int(request.session["id"]),
                    durum=0,
                    sorun=request.POST["sorun"],
                    cozumnotu=request.POST["cozumnotu"],
                    guncellenmetarihi=strftime("%Y-%m-%d", gmtime())
        )
    if "dosya" in request.FILES.keys():
        request.FILES["dosya"].name=request.FILES["dosya"].name.lower().replace("ş","s").replace("ç","c").replace("ı","i").replace(" ","-")
        new.resim=request.FILES["dosya"]
    new.save()

    return HttpResponseRedirect('/takip/kayitlar')

def ariza_gider(request,id):
    ariza=models.Ariza_Takip.objects.filter(id=id)[0]
    ariza.durum=-1
    ariza.save()
    return HttpResponseRedirect('/takip/kayitlar')

def ariza_devam(request,id):
    ariza=models.Ariza_Takip.objects.filter(id=id)[0]
    ariza.durum=0
    ariza.save()
    return HttpResponseRedirect('/takip/kayitlar')

def ariza_bekle(request,id):
    ariza=models.Ariza_Takip.objects.filter(id=id)[0]
    ariza.durum=1
    ariza.save()
    return HttpResponseRedirect('/takip/kayitlar')

def ariza_sil(request,id):
    ariza=models.Ariza_Takip.objects.filter(id=id)[0]
    ariza.delete()
    return HttpResponseRedirect('/takip/kayitlar')

def takip_olustur_duzenle(request,id):
    ariza=models.Ariza_Takip.objects.filter(id=id)[0]
    ekleyen=ariza.ekleyen
    guncelleyen=models.Yonetici.objects.filter(id=ariza.guncelleyen)[0]
    return render(request,'takip_kayitlari_duzenle.html',
        context={
        "ariza":ariza,
        "ekleyen":ekleyen,
        "guncelleyen":guncelleyen,
        }, # num_visits appended
    )

def takip_olustur_duzenle_fuc(request,id):
    ariza=models.Ariza_Takip.objects.filter(id=id)[0]
    ariza.guncelleyen=int(request.session["id"])
    ariza.sorun=request.POST["sorun"]
    ariza.cozumnotu=request.POST["cozumnotu"]
    ariza.guncellenmetarihi=strftime("%Y-%m-%d", gmtime())
        
    if "dosya" in request.FILES.keys():
        request.FILES["dosya"].name=request.FILES["dosya"].name.lower().replace("ş","s").replace("ç","c").replace("ı","i").replace(" ","-")
        ariza.resim=request.FILES["dosya"]
    ariza.save()
    return HttpResponseRedirect('/takip/kayitlar')

def takip_olustur_duzenle_fuc_resimsil(request,id):
	ariza=models.Ariza_Takip.objects.filter(id=id)[0]
	ariza.resim.delete()
	return HttpResponseRedirect('/takip/duzenle/'+str(id))
