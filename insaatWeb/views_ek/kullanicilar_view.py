from django.shortcuts import render
from insaatWeb import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages
from datetime import datetime,date

from insaatWeb.models import Bina_Kontrol, Bina_Kontrol_File,Yonetici


def kullanicilar_liste(request):
    request.session["menu1"]=11
    record=models.Yonetici.objects.all()
    return render(request,'kullanicilar_list.html',
    context={
    "record":record
    }, # num_visits appended
    )

def kullanicilar_ekle(request):
    request.session["menu1"]=11
    return render(request,'kullanicilar_ekle.html',
    context={
    }, # num_visits appended
    )

def kullanicilar_ekle_fuc(request):
    print (request.POST)
    kontrol=models.Yonetici.objects.filter(adi=request.POST["adi"])
    if kontrol:
        messages.error(request, "{} kullanıcısı ismine sahip bir kullanıcı mevcut.Lütfen farklı bir kullanıcı adı seçiniz".format(request.POST["adi"]))
        return HttpResponseRedirect('/kullanicilar/ekle')

    new=Yonetici(   adi=request.POST["adi"],
                    kadi=request.POST["kadi"],
                    sifre=request.POST["sifre"],
                    giris=datetime.now()
                    )
    new.save()
    
    if "durum" in request.POST.keys():
        new.durum=1
    else:
        new.durum=0
    if "projeekle" in request.POST.keys():
        new.projeekle=1
    else:
        new.projeekle=0
    if "projeduzenle" in request.POST.keys():
        new.projeduzenle=1
    else:
        new.projeduzenle=0
    if "projesil" in request.POST.keys():
        new.projesil=1
    else:
        new.projesil=0
    if "blokekle" in request.POST.keys():
        new.blokekle=1
    else:
        new.blokekle=0
    if "blokduzenle" in request.POST.keys():
        new.blokduzenle=1
    else:
        new.blokduzenle=0
    if "bloksil" in request.POST.keys():
        new.bloksil=1
    else:
        new.bloksil=0
    if "daireekle" in request.POST.keys():
        new.daireekle=1
    else:
        new.daireekle=0
    if "daireduzenle" in request.POST.keys():
        new.daireduzenle=1
    else:
        new.daireduzenle=0
    if "dairesil" in request.POST.keys():
        new.dairesil=1
    else:
        new.dairesil=0
    if "satisekle" in request.POST.keys():
        new.satisekle=1
    else:
        new.satisekle=0
    if "satisduzenle" in request.POST.keys():
        new.satisduzenle=1
    else:
        new.satisduzenle=0
    if "satissil" in request.POST.keys():
        new.satissil=1
    else:
        new.satissil=0
    if "portfoyekle" in request.POST.keys():
        new.portfoyekle=1
    else:
        new.portfoyekle=0
    if "portfoyduzenle" in request.POST.keys():
        new.portfoyduzenle=1
    else:
        new.portfoyduzenle=0
    if "portfoysil" in request.POST.keys():
        new.portfoysil=1
    else:
        new.portfoysil=0
    if "santiyeekle" in request.POST.keys():
        new.santiyeekle=1
    else:
        new.santiyeekle=0
    if "santiyeduzenle" in request.POST.keys():
        new.santiyeduzenle=1
    else:
        new.santiyeduzenle=0
    if "santiyesil" in request.POST.keys():
        new.santiyesil=1
    else:
        new.santiyesil=0
    if "santiyemalzemeekle" in request.POST.keys():
        new.santiyemalzemeekle=1
    else:
        new.santiyemalzemeekle=0
    if "santiyemalzemeduzenle" in request.POST.keys():
        new.santiyemalzemeduzenle=1
    else:
        new.santiyemalzemeduzenle=0
    if "santiyemalzemesil" in request.POST.keys():
        new.santiyemalzemesil=1
    else:
        new.santiyemalzemesil=0
    if "arizakaydiekle" in request.POST.keys():
        new.arizakaydiekle=1
    else:
        new.arizakaydiekle=0
    if "arizakaydiduzenle" in request.POST.keys():
        new.arizakaydiduzenle=1
    else:
        new.arizakaydiduzenle=0
    if "arizakaydisil" in request.POST.keys():
        new.arizakaydisil=1
    else:
        new.arizakaydisil=0
    if "tapusicilekle" in request.POST.keys():
        new.tapusicilekle=1
    else:
        new.tapusicilekle=0
    if "tapusicilduzenle" in request.POST.keys():
        new.tapusicilduzenle=1
    else:
        new.tapusicilduzenle=0
    if "tapusicilsil" in request.POST.keys():
        new.tapusicilsil=1
    else:
        new.tapusicilsil=0
    if "abonelikekle" in request.POST.keys():
        new.abonelikekle=1
    else:
        new.abonelikekle=0
    if "abonelikduzenle" in request.POST.keys():
        new.abonelikduzenle=1
    else:
        new.abonelikduzenle=0
    if "aboneliksil" in request.POST.keys():
        new.aboneliksil=1
    else:
        new.aboneliksil=0
    if "halklailiskilerekle" in request.POST.keys():
        new.halklailiskilerekle=1
    else:
        new.halklailiskilerekle=0
    if "halklailiskilerduzenle" in request.POST.keys():
        new.halklailiskilerduzenle=1
    else:
        new.halklailiskilerduzenle=0
    if "halklailiskilersil" in request.POST.keys():
        new.halklailiskilersil=1
    else:
        new.halklailiskilersil=0
    if "belgekaydiekle" in request.POST.keys():
        new.belgekaydiekle=1
    else:
        new.belgekaydiekle=0
    if "belgekaydiduzenle" in request.POST.keys():
        new.belgekaydiduzenle=1
    else:
        new.belgekaydiduzenle=0
    if "belgekaydisil" in request.POST.keys():
        new.belgekaydisil=1
    else:
        new.belgekaydisil=0
    if "maliyetekle" in request.POST.keys():
        new.maliyetekle=1
    else:
        new.maliyetekle=0
    if "maliyetduzenle" in request.POST.keys():
        new.maliyetduzenle=1
    else:
        new.maliyetduzenle=0
    if "maliyetsil" in request.POST.keys():
        new.maliyetsil=1
    else:
        new.maliyetsil=0
    if "binakontrolekle" in request.POST.keys():
        new.binakontrolekle=1
    else:
        new.binakontrolekle=0
    if "binakontrolduzenle" in request.POST.keys():
        new.binakontrolduzenle=1
    else:
        new.binakontrolduzenle=0
    if "binakontrolsil" in request.POST.keys():
        new.binakontrolsil=1
    else:
        new.binakontrolsil=0
    if "yoneticiekle" in request.POST.keys():
        new.yoneticiekle=1
    else:
        new.yoneticiekle=0
    if "yoneticiduzenle" in request.POST.keys():
        new.yoneticiduzenle=1
    else:
        new.yoneticiduzenle=0
    if "yoneticisil" in request.POST.keys():
        new.yoneticisil=1
    else:
        new.yoneticisil=0
    new.save()
    messages.info(request, "{} kullanıcısı başarı ile eklendi".format(new.adi))

    return HttpResponseRedirect('/kullanicilar/liste')

def kullanicilar_duzenle(request,id):
    new=models.Yonetici.objects.filter(id=id)[0]
    return render(request,'kullanicilar_duzenle.html',
    context={
    "new":new
    }, # num_visits appended
    )

def kullanicilar_duzenle_fuc(request,id):
    new=models.Yonetici.objects.filter(id=id)[0]
    if "durum" in request.POST.keys():
        new.durum=1
    else:
        new.durum=0
    if "projeekle" in request.POST.keys():
        new.projeekle=1
    else:
        new.projeekle=0
    if "projeduzenle" in request.POST.keys():
        new.projeduzenle=1
    else:
        new.projeduzenle=0
    if "projesil" in request.POST.keys():
        new.projesil=1
    else:
        new.projesil=0
    if "blokekle" in request.POST.keys():
        new.blokekle=1
    else:
        new.blokekle=0
    if "blokduzenle" in request.POST.keys():
        new.blokduzenle=1
    else:
        new.blokduzenle=0
    if "bloksil" in request.POST.keys():
        new.bloksil=1
    else:
        new.bloksil=0
    if "daireekle" in request.POST.keys():
        new.daireekle=1
    else:
        new.daireekle=0
    if "daireduzenle" in request.POST.keys():
        new.daireduzenle=1
    else:
        new.daireduzenle=0
    if "dairesil" in request.POST.keys():
        new.dairesil=1
    else:
        new.dairesil=0
    if "satisekle" in request.POST.keys():
        new.satisekle=1
    else:
        new.satisekle=0
    if "satisduzenle" in request.POST.keys():
        new.satisduzenle=1
    else:
        new.satisduzenle=0
    if "satissil" in request.POST.keys():
        new.satissil=1
    else:
        new.satissil=0
    if "portfoyekle" in request.POST.keys():
        new.portfoyekle=1
    else:
        new.portfoyekle=0
    if "portfoyduzenle" in request.POST.keys():
        new.portfoyduzenle=1
    else:
        new.portfoyduzenle=0
    if "portfoysil" in request.POST.keys():
        new.portfoysil=1
    else:
        new.portfoysil=0
    if "santiyeekle" in request.POST.keys():
        new.santiyeekle=1
    else:
        new.santiyeekle=0
    if "santiyeduzenle" in request.POST.keys():
        new.santiyeduzenle=1
    else:
        new.santiyeduzenle=0
    if "santiyesil" in request.POST.keys():
        new.santiyesil=1
    else:
        new.santiyesil=0
    if "santiyemalzemeekle" in request.POST.keys():
        new.santiyemalzemeekle=1
    else:
        new.santiyemalzemeekle=0
    if "santiyemalzemeduzenle" in request.POST.keys():
        new.santiyemalzemeduzenle=1
    else:
        new.santiyemalzemeduzenle=0
    if "santiyemalzemesil" in request.POST.keys():
        new.santiyemalzemesil=1
    else:
        new.santiyemalzemesil=0
    if "arizakaydiekle" in request.POST.keys():
        new.arizakaydiekle=1
    else:
        new.arizakaydiekle=0
    if "arizakaydiduzenle" in request.POST.keys():
        new.arizakaydiduzenle=1
    else:
        new.arizakaydiduzenle=0
    if "arizakaydisil" in request.POST.keys():
        new.arizakaydisil=1
    else:
        new.arizakaydisil=0
    if "tapusicilekle" in request.POST.keys():
        new.tapusicilekle=1
    else:
        new.tapusicilekle=0
    if "tapusicilduzenle" in request.POST.keys():
        new.tapusicilduzenle=1
    else:
        new.tapusicilduzenle=0
    if "tapusicilsil" in request.POST.keys():
        new.tapusicilsil=1
    else:
        new.tapusicilsil=0
    if "abonelikekle" in request.POST.keys():
        new.abonelikekle=1
    else:
        new.abonelikekle=0
    if "abonelikduzenle" in request.POST.keys():
        new.abonelikduzenle=1
    else:
        new.abonelikduzenle=0
    if "aboneliksil" in request.POST.keys():
        new.aboneliksil=1
    else:
        new.aboneliksil=0
    if "halklailiskilerekle" in request.POST.keys():
        new.halklailiskilerekle=1
    else:
        new.halklailiskilerekle=0
    if "halklailiskilerduzenle" in request.POST.keys():
        new.halklailiskilerduzenle=1
    else:
        new.halklailiskilerduzenle=0
    if "halklailiskilersil" in request.POST.keys():
        new.halklailiskilersil=1
    else:
        new.halklailiskilersil=0
    if "belgekaydiekle" in request.POST.keys():
        new.belgekaydiekle=1
    else:
        new.belgekaydiekle=0
    if "belgekaydiduzenle" in request.POST.keys():
        new.belgekaydiduzenle=1
    else:
        new.belgekaydiduzenle=0
    if "belgekaydisil" in request.POST.keys():
        new.belgekaydisil=1
    else:
        new.belgekaydisil=0
    if "maliyetekle" in request.POST.keys():
        new.maliyetekle=1
    else:
        new.maliyetekle=0
    if "maliyetduzenle" in request.POST.keys():
        new.maliyetduzenle=1
    else:
        new.maliyetduzenle=0
    if "maliyetsil" in request.POST.keys():
        new.maliyetsil=1
    else:
        new.maliyetsil=0
    if "binakontrolekle" in request.POST.keys():
        new.binakontrolekle=1
    else:
        new.binakontrolekle=0
    if "binakontrolduzenle" in request.POST.keys():
        new.binakontrolduzenle=1
    else:
        new.binakontrolduzenle=0
    if "binakontrolsil" in request.POST.keys():
        new.binakontrolsil=1
    else:
        new.binakontrolsil=0
    if "yoneticiekle" in request.POST.keys():
        new.yoneticiekle=1
    else:
        new.yoneticiekle=0
    if "yoneticiduzenle" in request.POST.keys():
        new.yoneticiduzenle=1
    else:
        new.yoneticiduzenle=0
    if "yoneticisil" in request.POST.keys():
        new.yoneticisil=1
    else:
        new.yoneticisil=0
    new.save()
    messages.info(request, "{} kullanıcısı yetkileri başarı ile güncellendi".format(new.adi))
    return HttpResponseRedirect('/kullanicilar/liste')

def profil(request):
    request.session["menu1"]=11
    return render(request,'kullanicilar_profil.html',
    context={
    }, # num_visits appended
    )

def profil_fuc(request,id):
    profil=models.Yonetici.objects.filter(id=id)[0]
    if request.POST["yenisifre1"]==request.POST["yenisifre2"]:
        pass
    else:
        messages.error(request, "Girmiş Olduğunuz yeni şifreler birbirinden farklı")
        return HttpResponseRedirect('/kullanicilar/profil')
    if request.POST["eskisifre"]==request.session["sifre"]:
        profil.sifre=request.POST["yenisifre1"].replace(" ","")
        profil.save()
        for key in list(request.session.keys()):
            del request.session[key]
        return HttpResponseRedirect('/')
    else:
        messages.error(request, "Girmiş Olduğunuz eski şifre geçersiz. Yeni şifrenizi onaylamak için eski şifreyi doğru girmek zorundasınız.")
        return HttpResponseRedirect('/kullanicilar/profil')