from django.shortcuts import render
from insaatWeb import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages
from datetime import datetime,date

from insaatWeb.models import Halkla_Iliskiler,Yonetici

def halklailiskiler_kayitlar(request):
    request.session["menu1"]=7
    record=models.Halkla_Iliskiler.objects.all()
    return render(request,'halklailiskiler_kayitlar.html',
        context={
        "record":record
        }, # num_visits appended
    )
def halklailiskiler_kayit_ekle(request):
    request.session["menu1"]=7
    return render(request,'halklailiskiler_kayitlar_ekle.html',
        context={
        }, # num_visits appended
    )
def halklailiskiler_kayit_ekle_fuc(request):
    ekleyen=models.Yonetici.objects.filter(id=request.session["id"])[0]
    new=Halkla_Iliskiler(   ekleyen=ekleyen,
                            gelen=request.POST["gelen"],
                            gorustugu=request.POST["gorustugu"],
                            arayan=request.POST["arayan"],
                            telefon=request.POST["telefon"],
                            konu=request.POST["konu"],
                            tarih=tarih(request.POST["tarih"],request.POST["sel1"],request.POST["sel2"])



                        )
    new.save()
    messages.info(request, "Kayıt başarı ile eklendi")

    return HttpResponseRedirect('/halklailiskiler/kayitlar')
    
def halklailiskiler_kayit_duzenle(request,id):
    record=models.Halkla_Iliskiler.objects.filter(id=id)[0]
    return render(request,'halklailiskiler_kayitlar_duzenle.html',
        context={
        "record":record
        }, # num_visits appended
    )
def halklailiskiler_kayit_duzenle_fuc(request,id):
    new=models.Halkla_Iliskiler.objects.filter(id=id)[0]
    new.gelen=request.POST["gelen"]
    new.gorustugu=request.POST["gorustugu"]
    new.arayan=request.POST["arayan"]
    new.telefon=request.POST["telefon"]
    new.konu=request.POST["konu"]
    new.save()
    messages.info(request, "Kayıt başarı ile güncellendi")
    return HttpResponseRedirect('/halklailiskiler/kayitlar')

def halklailiskiler_kayit_sil_fuc(request,id):
    new=models.Halkla_Iliskiler.objects.filter(id=id)[0]
    new.delete()
    messages.success(request, "Kayıt başarı ile silindi")

    return HttpResponseRedirect('/halklailiskiler/kayitlar')

def tarih(x,y,z):
    x=x.split("/")
    x=x[2]+"-"+x[1]+"-"+x[0]
    x=x+" "+y+":"+z
    return x