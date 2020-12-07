from django.shortcuts import render
from insaatWeb import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages
from datetime import datetime,date

from insaatWeb.models import Bina_Kontrol, Bina_Kontrol_File,Yonetici

def binakontrol_kayitlar(request):
    request.session["menu1"]=10
    record=models.Bina_Kontrol.objects.all()
    fil=[]
    for i in record:
        fil.append(len(models.Bina_Kontrol_File.objects.filter(kayit=i)))
    record=zip(record,fil)
    return render(request,'bina_kontrol_kayitlar.html',
        context={
        "record":record,
        }, # num_visits appended
    )
def binakontrol_ekle(request):
    request.session["menu1"]=10
    projeler=models.Projeler.objects.all()
    return render(request,'bina_kontrol_ekle.html',
        context={
        "projeler":projeler,
        }, # num_visits appended
    )
def binakontrol_ekle_fuc(request):
    new=Bina_Kontrol(    ekleyen=models.Yonetici.objects.filter(id=int(request.session["id"]))[0],
                        projeadi=models.Projeler.objects.filter(id=int(request.POST["projeadi"]))[0],
                        tarih=request.POST["tarih"],
                        hakkinda=request.POST["hakkinda"],
                    )
    new.save()
    if "dosya" in request.FILES.keys():
        for i in request.FILES.getlist("dosya"):
            i.name=i.name.lower().replace("ş","s").replace("ç","c").replace("ı","i").replace(" ","-")
            dosya=Bina_Kontrol_File( kayit=new,
                                    belge=i
                                )
            dosya.save()
    return HttpResponseRedirect('/binakontrol/kayitlar')

def binakontrol_duzenle(request,id):
    record=models.Bina_Kontrol.objects.filter(id=id)[0]
    file=models.Bina_Kontrol_File.objects.filter(kayit=record)
    projeler=models.Projeler.objects.all()
    return render(request,'bina_kontrol_duzenle.html',
        context={
        "record":record,
        "file":file,
        "projeler":projeler
        }, # num_visits appended
    )
def binakontrol_duzenle_fuc(request,id):
    record=models.Bina_Kontrol.objects.filter(id=id)[0]
    record.projeadi=models.Projeler.objects.filter(id=int(request.POST["projeadi"]))[0]
    record.tarih=request.POST["tarih"]
    record.hakkinda=request.POST["hakkinda"]
    record.save()
    if "dosya" in request.FILES.keys():
        for i in request.FILES.getlist("dosya"):
            i.name=i.name.lower().replace("ş","s").replace("ç","c").replace("ı","i").replace(" ","-")
            dosya=Bina_Kontrol_File( kayit=record,
                                    belge=i
                                )
            dosya.save()
    return HttpResponseRedirect('/binakontrol/kayitlar')

def binakontrol_sil_fuc(request,id):
    record=models.Bina_Kontrol.objects.filter(id=id)[0]
    record.delete()
    return HttpResponseRedirect('/binakontrol/kayitlar')

def binakontrol_dosya_sil_fuc(request,id):
    record=models.Bina_Kontrol_File.objects.filter(id=id)[0]
    record.delete()
    return HttpResponseRedirect('/binakontrol/duzenle/'+str(record.kayit.id))
