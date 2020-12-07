from django.shortcuts import render
from insaatWeb import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages

import numpy as np
from insaatWeb.models import Portfoy_Kayit

def portfoy(request):
    request.session["menu1"]=2
    record=models.Portfoy_Kayit.objects.all()
    print("*"*90,record)
    return render(request,'portfoy.html',
        context={
        "record":record,
        }, # num_visits appended
    )

def portfoy_ekle(request):
    request.session["menu1"]=2
    ilce=models.Ilce.objects.all()
    return render(request,'portfoy_ekle.html',
        context={
        "ilce":ilce,
        
        }, # num_visits appended
    )


def portfoy_ekle_fuc(request):

    maxx=request.POST["minFiyat"].replace(".","")
    minn=request.POST["maxFiyat"].replace(".","")
    if not maxx.isdigit():
        messages.error(request, 'Ekleme yapılamadı. Lütfen min fiyatı kontrol ediniz')
        return HttpResponseRedirect('/portfoy/ekle')
    if not minn.isdigit():
        messages.error(request, 'Ekleme yapılamadı. Lütfen max fiyatı kontrol ediniz')
        return HttpResponseRedirect('/portfoy/ekle')
    if "id" in request.POST.keys():
        #print ("*"*30,request.POST)
        new=models.Portfoy_Kayit.objects.filter(id=int(request.POST["id"]))[0]
        new.adisoyadi=request.POST["adisoyadi"]
        new.telefonev=request.POST["telefonev"]
        new.telefoncep=request.POST["telefoncep"]
        new.meslek=request.POST["meslek"]
        new.hakkinda=request.POST["hakkinda"]
        new.fiyataraligimin=maxx
        new.fiyataraligimax=minn
        new.ilce=request.POST["ilce"]
        new.odasayisi=str(request.POST.getlist("odasayisi"))
        new.emlakturu=str(request.POST.getlist("emlakturu"))
        new.satinalmaturu=request.POST["satinalma"]
        messages.success(request, 'Kişi portföyü başarı ile güncellendi')
    else:
        new=Portfoy_Kayit(
    	    adisoyadi=request.POST["adisoyadi"],
		    telefonev=request.POST["telefonev"],
		    telefoncep=request.POST["telefoncep"],
		    meslek=request.POST["meslek"],
		    hakkinda=request.POST["hakkinda"],
		    fiyataraligimin=maxx,
		    fiyataraligimax=minn,
		    ilce=request.POST["ilce"],
		    odasayisi=str(request.POST.getlist("odasayisi")),
		    emlakturu=str(request.POST.getlist("emlakturu")),
		    satinalmaturu=request.POST["satinalma"],
        )
        messages.success(request, 'Portföy başarı ile eklendi')
    new.save()
    

    return HttpResponseRedirect('/portfoy')

def portfoy_duzenle(request,id):
    rec=models.Portfoy_Kayit.objects.filter(id=id)[0]
    a=diziol(rec.odasayisi)
    listeoda=["1","1+1","2+1","2+2","3+1","3+2","4+1","4+2","4+3","4+4","5+1","5+2","5+3","5+4","6+1","6+2","6+3"]
    odasayisi=[]
    for i in listeoda:
        if i in a:
            odasayisi.append(1)
        else:
            odasayisi.append(0)
    a=diziol(rec.emlakturu)
    listeemlak=["Daire","Residence","Villa","Bina","İşYeri"]
    emlakturu=[]
    print ("*"*20,a)
    for i in listeemlak:
        if i in a:
            emlakturu.append(1)
        else:
            emlakturu.append(0)

    return render(request,'portfoy_duzenle.html',
        context={
        "rec":rec,
        "odasayisi":odasayisi,
        "emlakturu":emlakturu,
        }, # num_visits appended
    )
    
def portfoy_sil_fuc(request,id):
    new=models.Portfoy_Kayit.objects.filter(id=int(id))
    new.delete()
    messages.warning(request, 'Portföy başarı ile silindi')
    return HttpResponseRedirect('/portfoy')



def diziol(dizi):
    dizi=dizi.replace("[","").replace("]","").replace(" ","").replace("'","")
    x=dizi.split(",")     
    return x


