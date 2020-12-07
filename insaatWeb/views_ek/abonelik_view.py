from django.shortcuts import render
from insaatWeb import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages
from datetime import datetime,date

from insaatWeb.models import Abonelikler


def abonelik_hepsi(request):
    request.session["menu1"]=6
    record=models.Abonelikler.objects.all().order_by("-id")
    return render(request,'abonelik_list.html',
        context={
        "record":record,
        }, # num_visits appended
    )
def abonelik_ekle(request):
    request.session["menu1"]=6
    projeler=models.Projeler.objects.all()
    return render(request,'abonelik_ekle.html',
        context={
        "projeler":projeler,
        }, # num_visits appended
    )
def abonelik_ekle_fuc(request):
    if "tur" in request.POST.keys():
        ekleyen=request.session["id"]
        new=Abonelikler(    ekleyen=models.Yonetici.objects.filter(id=int(ekleyen))[0],
                            tur=request.POST["tur"],
                            aboneno=request.POST["aboneno"],
                            adres=request.POST["adres"],
                            masraf=request.POST["masraf"],
                            projeadi=models.Projeler.objects.filter(id=int(request.POST["projeadi"]))[0],
                            aciklama=request.POST["aciklama"],
                            adapafta=request.POST["adapafta"],
                            tarih=request.POST["tarih"]
            )
        new.save()
        messages.info(request, "Abonelik başarı ile eklendi")


        return HttpResponseRedirect('/abonelik/hepsi')
    else:
        messages.error(request, "Lütfen abonelik türünü belirtiniz")
        return HttpResponseRedirect('/abonelik/ekle')

    
def abonelik_duzenle(request,id):
    abone=models.Abonelikler.objects.filter(id=id)[0]
    projeler=models.Projeler.objects.all()
    return render(request,'abonelik_duzenle.html',
        context={
        "abone":abone,
        "projeler":projeler,
        }, # num_visits appended
    )
def abonelik_duzenle_fuc(request,id):
    new=models.Abonelikler.objects.filter(id=id)[0]
    new.tur=request.POST["tur"]
    new.aboneno=request.POST["aboneno"]
    new.adres=request.POST["adres"]
    new.masraf=request.POST["masraf"]
    new.projeadi=models.Projeler.objects.filter(id=int(request.POST["projeadi"]))[0]
    new.aciklama=request.POST["aciklama"]
    new.adapafta=request.POST["adapafta"]
    #new.tarih=request.POST["tarih"]
    new.save()
    messages.info(request, "Abonelik başarı ile güncellendi")
    return HttpResponseRedirect('/abonelik/hepsi')

def abonelik_sil_fuc(request,id):
    new=models.Abonelikler.objects.filter(id=id)[0]
    no=new.aboneno
    new.delete()
    messages.error(request, "{} abone numaralı kayıt silindi".format(no))
    return HttpResponseRedirect('/abonelik/hepsi')

def abonelik_medas(request):
    request.session["menu1"]=6
    record=models.Abonelikler.objects.filter(tur=0).order_by("-id")
    return render(request,'abonelik_list.html',
        context={
        "record":record,
        }, # num_visits appended
    )
def abonelik_koski(request):
    request.session["menu1"]=6
    record=models.Abonelikler.objects.filter(tur=1).order_by("-id")
    return render(request,'abonelik_list.html',
        context={
        "record":record,
        }, # num_visits appended
    )
def abonelik_enerya(request):
    request.session["menu1"]=6
    record=models.Abonelikler.objects.filter(tur=2).order_by("-id")
    return render(request,'abonelik_list.html',
        context={
        "record":record,
        }, # num_visits appended
    )