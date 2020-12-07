from django.shortcuts import render
from insaatWeb import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages
from datetime import datetime,date

from insaatWeb.models import Bloklar,Tapu_Satis,Daireler,Tapu_Alis,Tapu_Kat_Irtifaki,Tapu_Kat_Mulkiyeti,Yonetici

def tapusicil_tapusatis_kayitlar(request):
    request.session["menu1"]=5
    record=models.Tapu_Satis.objects.all().order_by("-id")
    return render(request,'tapusicil_tapusatis_kayit.html',
        context={
        "record":record,
        }, # num_visits appended
    )

def tapusicil_tapusatis_kayitlar_ekle(request,daireid):
    daire=models.Daireler.objects.filter(id=daireid)[0]
    return render(request,'tapusicil_tapusatis_kayit_ekle.html',
        context={
        "daire":daire,
        }, # num_visits appended
    )

def tapusicil_tapusatis_kayitlar_ekle_fuc(request,daireid):
    print (request.POST)
    masraf=request.POST['masraf'].replace(".","").replace(",","")
    if masraf.isdigit():
        new=Tapu_Satis( ekleyen=models.Yonetici.objects.filter(id=int(request.session["id"]))[0],
                        daireid=models.Daireler.objects.filter(id=daireid)[0],
                        daireadi=request.POST['daireadi'],
                        adisoyadi=request.POST['adisoyadi'],
                        meslek=request.POST['meslek'],
                        telefon=request.POST['telefon'],
                        adres=request.POST['adres'],
                        masraf=masraf,
                        tarih=request.POST['tarih'],
                )
        new.save()
        messages.info(request, "Tapu satışı başarı ile eklendi")

    else:
        messages.error(request, "Masrafı lütfen kontrol edin")

        return HttpResponseRedirect('/tapusicil/tapusatis/ekle/'+str(daireid))
    return HttpResponseRedirect('/tapusicil/tapusatis/kayitlar')

def tapusicil_tapusatis_kayitlar_duzenle(request,daireid):
    daire=models.Daireler.objects.filter(id=daireid)[0]
    tapu=models.Tapu_Satis.objects.filter(daireid=daire)[0]
    return render(request,'tapusicil_tapusatis_kayit_duzenle.html',
        context={
        "daire":daire,
        "tapu":tapu,
        }, # num_visits appended
    )

def tapusicil_tapusatis_kayitlar_duzenle_fuc(request,daireid):
    daire=models.Daireler.objects.filter(id=daireid)[0]
    tapu=models.Tapu_Satis.objects.filter(daireid=daire)[0]
    masraf=request.POST['masraf'].replace(".","").replace(",","")
    if masraf.isdigit():
        tapu.daireadi=request.POST['daireadi']
        tapu.adisoyadi=request.POST['adisoyadi']
        tapu.meslek=request.POST['meslek']
        tapu.telefon=request.POST['telefon']
        tapu.adres=request.POST['adres']
        tapu.masraf=masraf
        tapu.save()
        messages.info(request, "Tapu satışı başarı ile Güncellendi")

    else:
        messages.error(request, "Masrafı lütfen kontrol edin")
    return HttpResponseRedirect('/tapusicil/tapusatis/kayitlar')

def tapusicil_tapusatis_kayitlar_sil_fuc(request,daireid):
    daire=models.Daireler.objects.filter(id=daireid)[0]
    tapu=models.Tapu_Satis.objects.filter(daireid=daire)[0]
    tapu.delete()
    return HttpResponseRedirect('/tapusicil/tapusatis/kayitlar')

def tapusicil_tapualis_kayitlar(request):
    request.session["menu1"]=5
    record=models.Tapu_Alis.objects.all().order_by("-id")
    return render(request,'tapusicil_tapualis_kayit.html',
        context={
        "record":record,
        }, # num_visits appended
    )

def tapusicil_tapualis_kayitlar_ekle(request):
    tur=["Daire","Bina","İş Yeri","Arsa","Arazi","Tarla","Devremülk","Turistik Tesis"]
    return render(request,'tapusicil_tapualis_kayit_ekle.html',
        context={
        "tur":tur
        }, # num_visits appended
    )

def tapusicil_tapualis_kayitlar_ekle_fuc(request):
    print (request.POST)
    gayrimenkulalisbedeli=request.POST["gayrimenkulalisbedeli"].replace(".","").replace(",","")
    masraf=request.POST["masraf"].replace(".","").replace(",","")
    if "satinalma" in request.POST.keys():
        if gayrimenkulalisbedeli.isdigit() and masraf.isdigit():
            new=Tapu_Alis(
                    ekleyen=models.Yonetici.objects.filter(id=int(request.session["id"]))[0],
                    gayrimenkul=request.POST["satinalma"],
                    tapusahibi=request.POST["tapusahibi"],
                    adapafta=request.POST["adapafta"],
                    tarih=request.POST["tarih"],
                    gayrimenkulalisbedeli=gayrimenkulalisbedeli,
                    masraf=masraf,
                    oncekisahibi=request.POST["oncekisahibi"],
                    oncekisahibihakkinda=request.POST["oncekisahibihakkinda"]
                )
            new.save()
            messages.info(request, "Tapu alışı başarı ile eklendi")
        else:
            messages.error(request, "Lütfen alış bedelini ve masrafı kontrol ediniz")
            return HttpResponseRedirect('/tapusicil/tapualis/ekle')
    else:
        messages.error(request, "Lütfen satın alma türünü belirleyniz")
        return HttpResponseRedirect('/tapusicil/tapualis/ekle')

    return HttpResponseRedirect('/tapusicil/tapualis/kayitlar')

def tapusicil_tapualis_kayitlar_duzenle(request,alisid):
    tur=["Daire","Bina","İş Yeri","Arsa","Arazi","Tarla","Devremülk","Turistik Tesis"]
    alis=models.Tapu_Alis.objects.filter(id=alisid)[0]
    return render(request,'tapusicil_tapualis_kayit_duzenle.html',
        context={
        "tur":tur,
        "alis":alis
        }, # num_visits appended
    )

def tapusicil_tapualis_kayitlar_duzenle_fuc(request,alisid):
    gayrimenkulalisbedeli=request.POST["gayrimenkulalisbedeli"].replace(".","").replace(",","")
    masraf=request.POST["masraf"].replace(".","").replace(",","")
    if "satinalma" in request.POST.keys():
        if gayrimenkulalisbedeli.isdigit() and masraf.isdigit():
            new=models.Tapu_Alis.objects.filter(id=alisid)[0]
            new.gayrimenkul=request.POST["satinalma"]
            new.tapusahibi=request.POST["tapusahibi"]
            new.adapafta=request.POST["adapafta"]
            new.gayrimenkulalisbedeli=gayrimenkulalisbedeli
            new.masraf=masraf
            new.oncekisahibi=request.POST["oncekisahibi"]
            new.oncekisahibihakkinda=request.POST["oncekisahibihakkinda"]
            messages.info(request, "Tapu satışı başarı ile güncellendi")  
            new.save()
        else:
            messages.error(request, "Lütfen alış bedelini ve masrafı kontrol ediniz")
            return HttpResponseRedirect('/tapusicil/tapualis/ekle/'+str(alisid))
    else:
        messages.error(request, "Lütfen satın alma türünü belirleyniz")
        return HttpResponseRedirect('/tapusicil/tapualis/ekle/'+str(alisid))

    return HttpResponseRedirect('/tapusicil/tapualis/kayitlar')

def tapusicil_tapualis_kayitlar_sil_fuc(request,alisid):
    new=models.Tapu_Alis.objects.filter(id=alisid)[0]
    new.delete()
    return HttpResponseRedirect('/tapusicil/tapualis/kayitlar')


def tapusicil_katirtifaki_kayitlar(request):
    request.session["menu1"]=5
    record=models.Tapu_Kat_Irtifaki.objects.all().order_by("-id")
    return render(request,'tapusicil_kat_irtifaki.html',
        context={
        "record":record,
        }, # num_visits appended
    )

def tapusicil_katirtifaki_kayitlar_ekle_fuc(request):
    ekleyen=request.session["id"]
    projeadi=request.POST["projeadi"]
    projebagimsizsayisi=request.POST["projebagimsizsayisi"]
    tarih=request.POST["tarih"]
    new=Tapu_Kat_Irtifaki(  ekleyen=models.Yonetici.objects.filter(id=int(ekleyen))[0],
                            projeadi=projeadi,
                            projebagimsizsayisi=int(projebagimsizsayisi),
                            tarih=tarih
                        )
    new.save()
    messages.info(request, "Kat irtifakı başarı ile eklendi")
    return HttpResponseRedirect('/tapusicil/katirtifaki/kayitlar')

def tapusicil_katirtifaki_kayitlar_duzenle_fuc(request):
    projeadi=request.POST["projeadi"]
    projebagimsizsayisi=request.POST["projebagimsizsayisi"]
    tarih=request.POST["tarih"]
    hide=request.POST["hide"]
    new=models.Tapu_Kat_Irtifaki.objects.filter(id=int(hide))[0]
    new.projeadi=projeadi
    new.projebagimsizsayisi=int(projebagimsizsayisi)
    #new.tarih=tarih
    new.save()
    messages.info(request, "Kat irtifakı başarı ile güncellendi")
    return HttpResponseRedirect('/tapusicil/katirtifaki/kayitlar')


def tapusicil_katirtifaki_kayitlar_sil_fuc(request,id):
    new=models.Tapu_Kat_Irtifaki.objects.filter(id=id)[0]
    name=new.projeadi
    new.delete()
    messages.error(request, "{} projesi kat irtifakı başarı ile silindi".format(name))
    return HttpResponseRedirect('/tapusicil/katirtifaki/kayitlar')


def tapusicil_katmulkiyeti_kayitlar(request):
    request.session["menu1"]=5
    record=models.Tapu_Kat_Mulkiyeti.objects.all().order_by("-id")
    return render(request,'tapusicil_kat_mulkiyeti.html',
        context={
        "record":record,
        }, # num_visits appended
    )

def tapusicil_katmulkiyeti_kayitlar_ekle_fuc(request):
    ekleyen=request.session["id"]
    projeadi=request.POST["projeadi"]
    aciklama=request.POST["aciklama"]
    tarih=request.POST["tarih"]
    new=Tapu_Kat_Mulkiyeti( ekleyen=models.Yonetici.objects.filter(id=int(ekleyen))[0],
                            projeadi=projeadi,
                            aciklama=aciklama,
                            tarih=tarih
                        )
    new.save()
    messages.info(request, "Kat mülkiyeti başarı ile eklendi")
    return HttpResponseRedirect('/tapusicil/katmulkiyeti/kayitlar')

def tapusicil_katmulkiyeti_kayitlar_duzenle_fuc(request):
    projeadi=request.POST["projeadi"]
    aciklama=request.POST["aciklama"].replace(",","")
    tarih=request.POST["tarih"]
    hide=request.POST["hide"]
    new=models.Tapu_Kat_Mulkiyeti.objects.filter(id=int(hide))[0]
    new.projeadi=projeadi
    new.aciklama=aciklama
    #new.tarih=tarih
    new.save()
    messages.info(request, "Kat Mülkiyeti başarı ile güncellendi")
    return HttpResponseRedirect('/tapusicil/katmulkiyeti/kayitlar')

def tapusicil_katmulkiyeti_kayitlar_sil_fuc(request,id):
    new=models.Tapu_Kat_Mulkiyeti.objects.filter(id=id)[0]
    name=new.projeadi
    new.delete()
    messages.error(request, "{} projesi kat mulkiyeti başarı ile silindi".format(name))
    return HttpResponseRedirect('/tapusicil/katmulkiyeti/kayitlar')