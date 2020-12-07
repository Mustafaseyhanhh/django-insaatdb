from django.shortcuts import render
from insaatWeb import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages
from datetime import datetime,date
from django.db.models import Q
from django.http import JsonResponse
import json
from insaatWeb.models import Abonelikler

def satis_projeler_rapor1(request):
	adim=1
	pname=models.Projeler.objects.all()
	return render(request,'satis_rapor.html',
    context={
    "pname":pname,
    "adim":adim,
    }, # num_visits appended
    )
def satis_projeler_rapor2(request):
	pname=models.Projeler.objects.all()
	return render(request,'satis_rapor.html',
    context={
    "pname":pname,
    }, # num_visits appended
    )
def satis_projeler_rapor3(request):
	pname=models.Projeler.objects.all()
	return render(request,'satis_rapor.html',
    context={
    "pname":pname,
    }, # num_visits appended
    )
def satis_projeler_rapor4(request):
	pname=models.Projeler.objects.all()
	return render(request,'satis_rapor.html',
    context={
    "pname":pname,
    }, # num_visits appended
    )

def portfoy_rapor_olustur(request):
    request.session["menu1"]=2
    ilce=models.Ilce.objects.all()
    return render(request,'portfoy_rapor.html',
    context={
    "ilce":ilce,
    }, # num_visits appended
    )

def portfoy_rapor(request):
    request.session["menu1"]=2
    print(request.GET)
    if "odasayisi" in request.GET.keys() and "emlakturu" in request.GET.keys() and "satinalma" in request.GET.keys():
        baslik=["Ad Soyad" ,  "Telefon Meslek" , "İlçe"   , "Fiyat Aralığı"  , "Oda Sayısı" , "Emlak Türü"  ,"Satın Alma Türü Tarih"]
        portfoy=models.Portfoy_Kayit.objects.all()
        record=[]
        record1=[]
        record2=[]
        record3=[]
        record4=[]
        for i in portfoy:
            if i.fiyataraligimax<=int(request.GET["maxFiyat"]):
                if request.GET["ilce"]=="hepsi":
                    record1.append(i)
                else:
                    if i.ilce==request.GET["ilce"]:
                        record1.append(i)
        for i in record1:
            if request.GET["odasayisi"]=="hepsi":
                record2.append(i)
            else:
                odasayisi=request.GET.getlist("odasayisi")
                for x in odasayisi:
                    if i.odasayisi.find(x)!= -1:
                        record2.append(i)
        for i in record2:
            if request.GET["emlakturu"]=="hepsi":
                record3.append(i)
            else:
                emlakturu=request.GET.getlist("emlakturu")
                for x in emlakturu:
                    if i.emlakturu.find(x)!= -1:
                        record3.append(i)
        for i in record3:
            if request.GET["satinalma"]=="hepsi":
                record4.append(i)
            else:
                satinalma=request.GET.getlist("satinalma")
                for x in satinalma:
                    if i.satinalma.find(x)!= -1:
                        record4.append(i)
    else:
        messages.error(request, 'Tüm alanları doldurmalısınız')
        return HttpResponseRedirect('/portfoy/raporolustur')
    
    return render(request,'rapor.html',
    context={
    "baslik":baslik,
    "record":record4
    }, # num_visits appended
    )

def santiyeler_rapor_olustur(request):
    santiyeler=models.Santiyeler.objects.all()
    santiye_takip=models.Santiye_Takip.objects.all()
    tedarikci=[]
    tedarikci_id=[]
    for i in santiye_takip:
        if i.tedarikci in tedarikci:
            pass
        else:
            tedarikci.append(i.tedarikci)
            tedarikci_id.append(i.id)
    malzeme=[]
    for i in santiye_takip:
        if i.malzemeadi in malzeme:
            pass
        else: 
            malzeme.append(i.malzemeadi)
    tedarikci=zip(tedarikci,tedarikci_id)
    yoneticiler=models.Yonetici.objects.all()
    return render(request,'santiyeler_rapor.html',
    context={
    "santiyeler":santiyeler,
    "tedarikci":tedarikci,
    "malzeme":malzeme,
    "yoneticiler":yoneticiler,
    }, # num_visits appended
    )

def santiyeler_rapor(request):
    print(request.GET)
    santiyeler=models.v_santiye_malzemeler.objects.all()
    baslik=["Şantiye Adı" ,  "Fatura No" , "İrsaliye No"   , "Tedarikçi"  , "Malzeme Adı" , "Ekleyen"  ,"Tarih"]
    record=models.v_santiye_malzemeler.objects.all()
    if request.GET["santiye"]:
        record=record.filter(id=int(request.GET["santiye"]))
    if request.GET["tedarikci"]:
        record=record.filter(id=int(request.GET["tedarikci"]))
    if request.GET["malzeme"]:
        record=record.filter(malzemeadi=request.GET["tedarikci"])
    if request.GET["ekleyen"]:
        record=record.filter(editoradi=request.GET["ekleyen"])


    print(santiyeler)
    return render(request,'rapor_santiyeler.html',
    context={
    "baslik":baslik,
    "record":record
    }, # num_visits appended
    )

def santiyeler_rapor_ajax_tedarik(request):
    santiye=models.Santiyeler.objects.filter(id=int(request.GET["santiye_id"]))[0]
    record=models.Santiye_Takip.objects.filter(santiyeid=santiye)
    to_json = {}
    to_json["tedarikciler"]=[]
    for i in record:
        if i.id in to_json["tedarikciler"]:
            pass
        else:   
            to_json["tedarikciler"].append({"id":i.id,"adi":i.tedarikci})
        print(i)
    return JsonResponse(to_json)

def santiyeler_rapor_ajax_malzeme(request):
    record=models.Santiye_Takip.objects.filter(id=int(request.GET["tedarik_id"]))
    print("-"*20,record)
    to_json = {}
    to_json["malzemeler"]=[]
    for i in record:
        to_json["malzemeler"].append({"id":i.id,"adi":i.malzemeadi})
        print(i)
    return JsonResponse(to_json)

def takip_rapor_olustur(request):
    request.session["menu1"]=4
    projeler=models.Projeler.objects.all()
    return render(request,'takip_rapor.html',
    context={
    "projeler":projeler,
    }, # num_visits appended
    )

def takip_rapor(request):
    request.session["menu1"]=4
    record=models.Ariza_Takip.objects.all()
    if request.GET["projeid"]:
        record=record.filter(daireid__blokid__projeid=int(request.GET["projeid"]))
    if request.GET["durum"]:
        record=record.filter(durum=int(request.GET["durum"]))
    print("*"*20,record)
    baslik=["Daire" ,  "Sorun" ,"Durum"]
    return render(request,'rapor_takip.html',
    context={
    "baslik":baslik,
    "record":record
    }, # num_visits appended
    )

def abonelik_rapor_olustur(request):
    request.session["menu1"]=6
    projeler=models.Projeler.objects.all()
    return render(request,'abonelik_rapor.html',
    context={
    "projeler":projeler,
    }, # num_visits appended
    )

def abonelik_rapor(request):
    request.session["menu1"]=6
    print("*"*20,request.GET)
    ayrinti=False
    record=[]
    if "ayrinti" in request.GET.keys():
        ayrinti=True
    if "tur1" in request.GET.keys():
        record.extend(models.Abonelikler.objects.filter(tur=0))
    if "tur2" in request.GET.keys():
        record.extend(models.Abonelikler.objects.filter(tur=1))
    if "tur3" in request.GET.keys():
        record.extend(models.Abonelikler.objects.filter(tur=2))
    baslik=["Tür" ,  "Abone No" ,"Masraf","Proje Adı","Ada/Pafta"]
    return render(request,'rapor_abonelik.html',
    context={
    "baslik":baslik,
    "record":record,
    "ayrinti":ayrinti,

    }, # num_visits appended
    )

def halklailiskiler_rapor_olustur(request):
    request.session["menu1"]=7
    return render(request,'halklailiskiler_rapor.html',
    context={

    }, # num_visits appended
    )


def halklailiskiler_rapor(request):
    request.session["menu1"]=7
    print(request.GET)
    
    baslik=["Tarih Saat" ,  "Gelen Kişi" , "Arayan"  , "Telefon"  , "Konu" , "Görüştüğü Kişi" ]
    halklailiskiler=models.Halkla_Iliskiler.objects.all()
    record=[]
    record1=[]
    record2=[]

    for i in halklailiskiler:
        if request.GET["gelen"]=="":
            print("1")
            record1.append(i)
        else:
            if i.gelen==request.GET["gelen"]:
                print("2")
                record1.append(i)
    for i in record1:
        if request.GET["gorustugu"]=="":
            print("3")
            record2.append(i)
        else:
            if i.gorustugu==request.GET["gorustugu"]:
                print("4")
                record2.append(i)

    
    return render(request,'rapor_halklailiskiler.html',
    context={
    "baslik":baslik,
    "record":record2
    }, # num_visits appended
    )

def belge_rapor_olustur(request):
    request.session["menu1"]=8
    return render(request,'belge_rapor.html',
    context={

    }, # num_visits appended
    )


def belge_rapor(request):
    request.session["menu1"]=8
    print(request.GET)
    
    baslik=["Tür" ,  "Konu" , "Kime"  , "Tarih"  , "Ekleyen" ]
    belgeler=models.Belge_Kaydi.objects.all()
    record=[]
    record1=[]
    record2=[]
    record3=[]

    if "gelen" in request.GET.keys():
        pass
    for i in belgeler:
        if request.GET["konu"]=="":
            print("1")
            record1.append(i)
        else:
            if i.konu==request.GET["konu"]:
                print("2")
                record1.append(i)
    for i in record1:
        if request.GET["kime"]=="":
            print("3")
            record2.append(i)
        else:
            if i.kime==request.GET["kime"]:
                print("4")
                record2.append(i)
    for i in record1:
        if request.GET["kime"]=="":
            print("3")
            record3.append(i)
        else:
            if i.kime==request.GET["kime"]:
                print("4")
                record3.append(i)
    
    return render(request,'rapor_halklailiskiler.html',
    context={
    "baslik":baslik,
    "record":record3
    }, # num_visits appended
    )


def satis_rapor_olustur(request):
    request.session["menu1"]=1
    projeler=models.Projeler.objects.all()
    return render(request,'satis_rapor.html',
    context={"projeler":projeler

    }, # num_visits appended
    )
    

def satis_rapor_olustur_ajax_blok(request):
    proje=models.Projeler.objects.filter(id=int(request.GET["proje_id"]))[0]
    record=models.Bloklar.objects.filter(projeid=proje)
    to_json = {}
    to_json["bloklar"]=[]
    for i in record:
        to_json["bloklar"].append({"id":i.id,"adi":i.adi})
    return JsonResponse(to_json)


def satis_rapor(request):
    print(request.GET)
    baslik=["Proje Adı","Blok Adı","Daire No","Daire Fiyatı"]
    tckimlik=0
    adsoyad=0
    telefon=0
    odenen=0
    borc=0
    if "tckimlik" in request.GET.keys():
        baslik.append("TC Kimlik No")
        tckimlik=1
    if "adsoyad" in request.GET.keys():
        baslik.append("Ad Soyad")
        adsoyad=1
    if "telefon" in request.GET.keys():
        baslik.append("Telefon")
        telefon=1
    if "odenen" in request.GET.keys():
        baslik.append("Ödenen")
        odenen=1
    if "borc" in request.GET.keys():
        baslik.append("Borç")
        borc=1
    record=models.v_satis.objects.all()
    if request.GET["projeler"]:
        record=record.filter(projeid=int(request.GET["projeler"]))
    if request.GET["bloklar"]:
        record=record.filter(blokid=int(request.GET["bloklar"]))
    if request.GET["daireler"]:
        if int(request.GET["daireler"])==1:
            record=record.filter(satisid__isnull=True)
        if int(request.GET["daireler"])==2:
            record=record.filter(satisid__isnull=False)
        if int(request.GET["daireler"])==3:
            record=record.filter(odenen="-1")
        if int(request.GET["daireler"])==4:
            record2=[]
            for i in record:
                if i.odenen:
                    if i.fiyat>i.odenen:
                        record2.append(i)
            record=record2


    return render(request,'rapor_satis.html',
    context={
        "record":record,
        "baslik":baslik,
        "tckimlik":tckimlik,
        "adisoyadi":adsoyad,
        "telefon":telefon,
        "odenen":odenen,
        "borc":borc

    }, # num_visits appended
    )