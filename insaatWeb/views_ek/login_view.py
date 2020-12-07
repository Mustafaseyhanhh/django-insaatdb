from django.shortcuts import render
from insaatWeb import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages

from datetime import datetime,date
import random
from insaatWeb.models import Yonetici

def login(request):
    if "log" in request.session:
        if request.session["log"]:
            return HttpResponseRedirect("index")
    if "adi" in request.session:
        adi=request.session["adi"]
        return render(request,"login.html",
            context={
            "adi":adi,
            },
        )
    return render(request,"login.html",
        context={
        },
    )

def log_out_fuc(request):
    request.session["log"]=False
    return HttpResponseRedirect("/")

def log_new_fuc(request):
    request.session["adi"]=None
    return HttpResponseRedirect("/")

def login_fuc(request):
    if request.POST: 
        if "uname" in request.POST:
            uname=request.POST["uname"].replace(" ","")
            pasw=request.POST["pasw"]
            auth=models.Yonetici.objects.filter(kadi=uname,sifre=pasw)
            if auth:
                auth=auth[0]
                request.session["id"]=auth.id
                request.session["adi"]=auth.adi
                request.session["kadi"]=auth.kadi
                request.session["sifre"]=auth.sifre
                request.session["log"]=True
                request.session["satispazarlama"]=auth.satispazarlama
                request.session["musteriportfoy"]=auth.musteriportfoy
                request.session["santiyetakip"]=auth.santiyetakip
                request.session["arizatakip"]=auth.arizatakip
                request.session["tapusicil"]=auth.tapusicil
                request.session["abonelik"]=auth.abonelik
                request.session["halklailiskiler"]=auth.halklailiskiler
                request.session["belgekaydi"]=auth.belgekaydi
                request.session["maliyet"]=auth.maliyet
                request.session["binakontrol"]=auth.binakontrol
                request.session["projeekle"]=auth.projeekle
                request.session["projeduzenle"]=auth.projeduzenle
                request.session["projesil"]=auth.projesil
                request.session["blokekle"]=auth.blokekle
                request.session["blokduzenle"]=auth.blokduzenle
                request.session["bloksil"]=auth.bloksil
                request.session["daireekle"]=auth.daireekle
                request.session["daireduzenle"]=auth.daireduzenle
                request.session["dairesil"]=auth.dairesil
                request.session["satisekle"]=auth.satisekle
                request.session["satisduzenle"]=auth.satisduzenle
                request.session["satissil"]=auth.satissil
                request.session["portfoyekle"]=auth.portfoyekle
                request.session["portfoyduzenle"]=auth.portfoyduzenle
                request.session["portfoysil"]=auth.portfoysil
                request.session["santiyeekle"]=auth.santiyeekle
                request.session["santiyeduzenle"]=auth.santiyeduzenle
                request.session["santiyesil"]=auth.santiyesil
                request.session["santiyemalzemeekle"]=auth.santiyemalzemeekle
                request.session["santiyemalzemeduzenle"]=auth.santiyemalzemeduzenle
                request.session["santiyemalzemesil"]=auth.santiyemalzemesil
                request.session["arizakaydiekle"]=auth.arizakaydiekle
                request.session["arizakaydiduzenle"]=auth.arizakaydiduzenle
                request.session["arizakaydisil"]=auth.arizakaydisil
                request.session["arizatakipkontrolu"]=auth.arizatakipkontrolu
                request.session["tapusicilekle"]=auth.tapusicilekle
                request.session["tapusicilduzenle"]=auth.tapusicilduzenle
                request.session["tapusicilsil"]=auth.tapusicilsil
                request.session["abonelikekle"]=auth.abonelikekle
                request.session["abonelikduzenle"]=auth.abonelikduzenle
                request.session["aboneliksil"]=auth.aboneliksil
                request.session["halklailiskilerekle"]=auth.halklailiskilerekle
                request.session["halklailiskilerduzenle"]=auth.halklailiskilerduzenle
                request.session["halklailiskilersil"]=auth.halklailiskilersil
                request.session["belgekaydiekle"]=auth.belgekaydiekle
                request.session["belgekaydiduzenle"]=auth.belgekaydiduzenle
                request.session["belgekaydisil"]=auth.belgekaydisil
                request.session["maliyetekle"]=auth.maliyetekle
                request.session["maliyetduzenle"]=auth.maliyetduzenle
                request.session["maliyetsil"]=auth.maliyetsil
                request.session["binakontrolekle"]=auth.binakontrolekle
                request.session["binakontrolduzenle"]=auth.binakontrolduzenle
                request.session["binakontrolsil"]=auth.binakontrolsil
                request.session["yoneticiekle"]=auth.yoneticiekle
                request.session["yoneticiduzenle"]=auth.yoneticiduzenle
                request.session["yoneticisil"]=auth.yoneticisil
                request.session["menu1"]=0
                request.session["menu2"]=0
                auth.giris=datetime.now()
                auth.save()

                return HttpResponseRedirect("index")
            else:
                messages.error(request, "Kullanıcı adı yada şifre yanlış")
                return HttpResponseRedirect("/")
        else:
            pasw=request.POST["pasw"]
            uname=request.session["kadi"]
            auth=models.Yonetici.objects.filter(kadi=uname,sifre=pasw)
            if auth:
                auth=auth[0]
                request.session["id"]=auth.id
                request.session["adi"]=auth.adi
                request.session["kadi"]=auth.kadi
                request.session["sifre"]=auth.sifre
                request.session["log"]=True
                request.session["satispazarlama"]=auth.satispazarlama
                request.session["musteriportfoy"]=auth.musteriportfoy
                request.session["santiyetakip"]=auth.santiyetakip
                request.session["arizatakip"]=auth.arizatakip
                request.session["tapusicil"]=auth.tapusicil
                request.session["abonelik"]=auth.abonelik
                request.session["halklailiskiler"]=auth.halklailiskiler
                request.session["belgekaydi"]=auth.belgekaydi
                request.session["maliyet"]=auth.maliyet
                request.session["binakontrol"]=auth.binakontrol
                request.session["projeekle"]=auth.projeekle
                request.session["projeduzenle"]=auth.projeduzenle
                request.session["projesil"]=auth.projesil
                request.session["blokekle"]=auth.blokekle
                request.session["blokduzenle"]=auth.blokduzenle
                request.session["bloksil"]=auth.bloksil
                request.session["daireekle"]=auth.daireekle
                request.session["daireduzenle"]=auth.daireduzenle
                request.session["dairesil"]=auth.dairesil
                request.session["satisekle"]=auth.satisekle
                request.session["satisduzenle"]=auth.satisduzenle
                request.session["satissil"]=auth.satissil
                request.session["portfoyekle"]=auth.portfoyekle
                request.session["portfoyduzenle"]=auth.portfoyduzenle
                request.session["portfoysil"]=auth.portfoysil
                request.session["santiyeekle"]=auth.santiyeekle
                request.session["santiyeduzenle"]=auth.santiyeduzenle
                request.session["santiyesil"]=auth.santiyesil
                request.session["santiyemalzemeekle"]=auth.santiyemalzemeekle
                request.session["santiyemalzemeduzenle"]=auth.santiyemalzemeduzenle
                request.session["santiyemalzemesil"]=auth.santiyemalzemesil
                request.session["arizakaydiekle"]=auth.arizakaydiekle
                request.session["arizakaydiduzenle"]=auth.arizakaydiduzenle
                request.session["arizakaydisil"]=auth.arizakaydisil
                request.session["arizatakipkontrolu"]=auth.arizatakipkontrolu
                request.session["tapusicilekle"]=auth.tapusicilekle
                request.session["tapusicilduzenle"]=auth.tapusicilduzenle
                request.session["tapusicilsil"]=auth.tapusicilsil
                request.session["abonelikekle"]=auth.abonelikekle
                request.session["abonelikduzenle"]=auth.abonelikduzenle
                request.session["aboneliksil"]=auth.aboneliksil
                request.session["halklailiskilerekle"]=auth.halklailiskilerekle
                request.session["halklailiskilerduzenle"]=auth.halklailiskilerduzenle
                request.session["halklailiskilersil"]=auth.halklailiskilersil
                request.session["belgekaydiekle"]=auth.belgekaydiekle
                request.session["belgekaydiduzenle"]=auth.belgekaydiduzenle
                request.session["belgekaydisil"]=auth.belgekaydisil
                request.session["maliyetekle"]=auth.maliyetekle
                request.session["maliyetduzenle"]=auth.maliyetduzenle
                request.session["maliyetsil"]=auth.maliyetsil
                request.session["binakontrolekle"]=auth.binakontrolekle
                request.session["binakontrolduzenle"]=auth.binakontrolduzenle
                request.session["binakontrolsil"]=auth.binakontrolsil
                request.session["yoneticiekle"]=auth.yoneticiekle
                request.session["yoneticiduzenle"]=auth.yoneticiduzenle
                request.session["yoneticisil"]=auth.yoneticisil
                request.session["menu1"]=0
                request.session["menu2"]=0
                auth.giris=datetime.now()
                auth.save()

                return HttpResponseRedirect("index")
            else:
                messages.error(request, "Kullanıcı adı yada şifre yanlış")
                return HttpResponseRedirect("/")
    else:
        return HttpResponseRedirect("/")

