from django.shortcuts import render
from insaatWeb import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages
from datetime import datetime,date
import random,os,filetype
from insaatWeb.models import Projeler,Bloklar,Daireler,Satis,Ariza_Takip,Tapu_Satis

def satis_projeler(request):
    request.session["menu1"]=1
    projeler=models.Projeler.objects.all()
    daires=[]
    bloks=[]
    for i in projeler:
        bloks.append(len(models.Bloklar.objects.filter(projeid=i)))
        daires.append(len(models.Daireler.objects.filter(blokid__projeid=i)))
    projes=zip(projeler,bloks,daires)
    if not projeler:
        messages.info(request, 'Henüz proje oluşturulmadı.')
    return render(request,'satis_projeler.html',
        context={
        "projeler":projeler,
        "projes":projes
        }, # num_visits appended
    )

def satis_projeler_ekle_fuc(request):
    if request.POST:
        print (request.POST)
        pname=request.POST["pname"]
        new=Projeler(adi=pname)
        new.save()
        messages.success(request, '{} projesi başarı ile eklendi.'.format(pname))
    else:
        messages.error(request, 'Hatalı url girildi')
    return HttpResponseRedirect('/satis/projeler')

def satis_projeler_duzenle_fuc(request):
    if request.POST:
        print (request.POST.keys())
        pname=request.POST["pname"]
        pid=request.POST["id"]
        if "btduzenle" in request.POST.keys():
            new=models.Projeler.objects.filter(id=int(pid))[0]
            lastname=new.adi
            new.adi=pname
            new.save()
            messages.success(request, '{} projesi {} olarak değiştirildi .'.format(lastname,pname))
        elif "btsil" in request.POST.keys():
            satis_projeler_sil_fuc(request)
    else:
        messages.error(request, 'Hatalı url girildi')
    return HttpResponseRedirect('/satis/projeler')

def satis_projeler_sil_fuc(request):
    pid=int(request.POST["id"])
    pname=request.POST["pname"]
    print (pid)
    new=models.Projeler.objects.filter(id=pid)[0]
    new.delete()
    messages.warning(request, '{} projesi silindi .'.format(pname))
    return HttpResponseRedirect('/satis/projeler')

            
def satis_projeler_detay(request,pid,num):
    pidblokdaire=[]
    pid=models.Projeler.objects.filter(id=pid)[0]
    pidblok=models.Bloklar.objects.filter(projeid=pid)
    for i in pidblok:
        if models.v_satis.objects.filter(projeid=pid.id,blokid=i.id):
            pidblokdaire.append(models.v_satis.objects.filter(projeid=pid.id,blokid=i.id).order_by("-daireno"))
            print (pidblokdaire)


    return render(request,'satis_projeler_detay.html',
        context={
        "num":num,
        "pid":pid,
        "pidblok":pidblok,
        "pidblokdaire":pidblokdaire
        }, # num_visits appended
    )

def satis_projeler_blok_ekle(request,pid):
    pid=models.Projeler.objects.filter(id=pid)[0]
    return render(request,'blok_ekle.html',
        context={
        "pid":pid
        }, # num_visits appended
    )

def satis_projeler_blok_sil_fuc(request,pid,blokid):
    proje=models.Projeler.objects.filter(id=pid)[0]
    blok=models.Bloklar.objects.filter(id=blokid,projeid=proje)[0]
    messages.warning(request, '{} isimli blok silindi'.format(blok.adi))
    blok.delete()
    
    return HttpResponseRedirect('/satis/projeler/'+str(pid)+'/0')

def satis_projeler_blok_ekle_fuc(request,pid):
    if request.POST["metrekare"].isdigit():
        new=Bloklar(
                projeid = models.Projeler.objects.filter(id=pid)[0],
                adi = request.POST["blokadi"],
                metrekare = int(request.POST["metrekare"]),
                odasayisi = request.POST["odasayisi"],
                katsayisi = int(request.POST["katsayisi"]),
                birkattakidairesayisi = int(request.POST["birkattakidairesayisi"]),
                blokkenarsol = request.POST["blokKenarSol"],
                blokkenarsag = request.POST["blokKenarSag"],
                blokkenaryukari = request.POST["blokKenarYukari"],
                blokkenarasagi = request.POST["blokKenarAsagi"])
        new.save()
        genelfiyat=request.POST["genelfiyat"]
        if genelfiyat:
            oto_daire(new,genelfiyat)
        else:
            oto_daire(new,0)
        messages.success(request, '{} isimli blok eklendi'.format(request.POST["blokadi"]))
        return HttpResponseRedirect('/satis/projeler/'+str(pid)+'/'+str(new.id))
    else:
        messages.error(request, 'Yeni blok eklenemedi girdiğiniz değerleri lütfen kontrol ediniz')
        return HttpResponseRedirect('/satis/projeler/blokekle/'+str(pid))


def satis_projeler_blok_duzenle(request,pid,blokid):
    proje=models.Projeler.objects.filter(id=pid)[0]
    blok=models.Bloklar.objects.filter(projeid=proje,id=blokid)[0]
    return render(request,'blok_duzenle.html',
        context={
        "blok":blok,
        "proje":proje
        }, # num_visits appended
    )

def satis_projeler_blok_duzenle_fuc(request,pid,blokid):
    blokid=blokid
    pid=pid
    blok=models.Bloklar.objects.filter(id=blokid)[0]
    if request.POST["metrekare"].isdigit():
        blok.adi = request.POST["blokadi"]
        blok.metrekare = int(request.POST["metrekare"])
        blok.odasayisi = request.POST["odasayisi"]
        blok.katsayisi = int(request.POST["katsayisi"])
        blok.birkattakidairesayisi = int(request.POST["birkattakidairesayisi"])
        blok.blokkenarsol = request.POST["blokKenarSol"]
        blok.blokkenarsag = request.POST["blokKenarSag"]
        blok.blokkenaryukari = request.POST["blokKenarYukari"]
        blok.blokkenarasagi = request.POST["blokKenarAsagi"]
        messages.success(request, '{} isimli blok kaydedildi'.format(request.POST["blokadi"]))
        blok.save()
    else: 
        messages.error(request, '{} isimli blok kaydedilemedi. Girdiğiniz yeni bilgileri kontrol ediniz'.format(request.POST["blokadi"]))
        return HttpResponseRedirect('/satis/projeler/duzenle/'+str(pid)+'/'+str(blokid))
    return HttpResponseRedirect('/satis/projeler/'+str(pid)+'/'+str(blokid))


def oto_daire(new,genelfiyat):
    dairesayisi=new.birkattakidairesayisi*new.katsayisi
    for i in range(dairesayisi):
        print ("girildi")
        newdaire=Daireler(
            blokid=new,
            no=i+1,
            fiyat=int(str(genelfiyat).replace(".",""))
            )
        newdaire.save()

def satis_projeler_blok_daire_ekle_fuc(request,pid):
    blokid=request.POST["hide"]
    daireno=request.POST["daireno"]
    fiyat=request.POST["fiyat"]
    proje=models.Projeler.objects.filter(id=pid)[0]
    blok=models.Bloklar.objects.filter(projeid=proje,id=blokid)[0]

    if models.Daireler.objects.filter(blokid=blok,no=daireno):
        messages.error(request, '{} Numaralı daire daha önceden oluşturulmuş'.format(daireno))
        
    else:
        try:
            fiyat=int(fiyat.replace(".",""))
            new=Daireler(blokid=blok,
            no=daireno,
            fiyat=fiyat)
            messages.success(request, '{} numaralı daire eklendi'.format(daireno))
            new.save()
        except ValueError:
            messages.error(request, 'Daire için gitmiş olduğunuz fiyat geçersiz')
            return HttpResponseRedirect('/satis/projeler/'+str(pid)+"/"+blokid)   
    return HttpResponseRedirect('/satis/projeler/'+str(pid)+"/"+blokid)


def satis_projeler_daire_duzenle(request,pid,blokid,no):
    proje=models.Projeler.objects.filter(id=pid)[0]
    blok=models.Bloklar.objects.filter(id=blokid)[0]
    daire=models.Daireler.objects.filter(blokid=blok,no=no)[0]
    satis=models.Satis.objects.filter(daireid=daire)
    record=models.Ariza_Takip.objects.filter(daireid=daire)
    tapu=models.Tapu_Satis.objects.filter(daireid=daire)
    yuzdelik=0
    if satis:
        satis=satis[0]
        if daire.fiyat != 0:
            yuzdelik=int(satis.odenen/(daire.fiyat/100))
        else:
            yuzdelik=100
    return render(request,'daire_duzenle.html',
        context={
        "proje":proje,
        "blok":blok,
        "daire":daire,
        "satis":satis,
        "yuzdelik":yuzdelik,
        "record":record,
        "tapu":tapu
        }, # num_visits appended
    )

def satis_projeler_daire_duzenle_kaydet(request,pid,blokid,no):
    print("*"*100)
    print ("*"*50)
    if request.FILES:
        pname, ext = os.path.splitext(request.FILES["dosya"].name)
        request.FILES["dosya"].name="sozlesme-"+str(pid)+"-"+str(blokid)+"-"+str(no)+ext
        print(request.FILES["dosya"].name)
    #handle_uploaded_file(request.FILES['dosya'], "yeni isim")
    blok=models.Bloklar.objects.filter(id=blokid)[0]
    daire=models.Daireler.objects.filter(blokid=blok,no=no)[0]
    satis=models.Satis.objects.filter(daireid=daire)
    if satis:
        satis=satis[0]
        if "odenen" in request.POST.keys():
            if request.POST["odenen"].isdigit():
                satis.odenen=request.POST["odenen"]
            else:
                messages.error(request, 'Ödenen miktarı sayısal olarak giriniz')
                return HttpResponseRedirect('/satis/projeler/duzenle/'+str(pid)+"/"+str(blokid)+"/"+str(no))
        else:
            satis.odenen=-1
        satis.tckimlik=request.POST["tckimlik"]
        satis.adisoyadi=request.POST["adisoyadi"]
        satis.telefon=request.POST["telefon"]
        satis.hakkinda=request.POST["hakkinda"]
        if request.FILES :
            satis.sozlesme=request.FILES["dosya"]
        satis.save()
    else:
        if "odenen" in request.POST.keys():
            odenen=request.POST["odenen"].replace(".","")
            if not odenen.isdigit():
                messages.error(request, 'Ödenen miktarı sayısal olarak giriniz')
                return HttpResponseRedirect('/satis/projeler/duzenle/'+str(pid)+"/"+str(blokid)+"/"+str(no))
        else:
            odenen=-1
        newsatis=Satis(
            daireid=daire,
            odenen=odenen,
            tckimlik=request.POST["tckimlik"],
            adisoyadi=request.POST["adisoyadi"],
            telefon=request.POST["telefon"],
            hakkinda=request.POST["hakkinda"],
            )
        newsatis.save()
        if request.FILES:
            newsatis.sozlesme=request.FILES["dosya"]
            newsatis.save()
    messages.success(request, 'Kayıt başarı ile eklendi')
    return HttpResponseRedirect('/satis/projeler/'+str(pid)+"/"+str(blokid))




def satis_projeler_daire_duzenle_satisiptal(request,pid,blokid,no):
    v_satisiptal=models.v_satis.objects.filter(projeid=pid,blokid=blokid,daireno=no)[0]
    satisiptal=models.Satis.objects.filter(daireid=v_satisiptal.daireid)[0]
    messages.success(request, '{} kişisine yapılan satış iptal edildi.'.format(v_satisiptal.adisoyadi))
    satisiptal.delete()
    return HttpResponseRedirect('/satis/projeler/'+str(pid)+"/"+str(blokid))


def satis_projeler_daire_duzenle_sozlesme_sil(request,id):
    satis=models.Satis.objects.filter(id=id)[0]
    satis.sozlesme.delete()
    messages.warning(request, 'Sözleşme başarı ile silindi.')
    return HttpResponseRedirect('/satis/projeler/duzenle/'+ str(satis.daireid.blokid.projeid.id)+"/"+str(satis.daireid.blokid.id)+"/"+str(satis.daireid.no))




def handle_uploaded_file(file, filename):
    MEDIA_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))+"/media/satis_sozlesmeleri/"
    with open(MEDIA_DIR + filename, 'wb+') as destination:
        for chunk in file.chunks():
            destination.write(chunk)