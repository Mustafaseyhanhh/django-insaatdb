from django.db import models

# Create your models here.
from django.db.models import ForeignKey, CharField


class Projeler(models.Model):
    adi = models.CharField(max_length=200, verbose_name="Proje Adı")
    def __str__(self):
        return self.adi


class Bloklar(models.Model):
    projeid = models.ForeignKey("Projeler",  on_delete=models.CASCADE)
    adi = models.CharField(max_length=200,  verbose_name="Adı")
    metrekare = models.IntegerField( verbose_name="Metrakare")
    odasayisi = models.CharField(max_length=8,  verbose_name='Oda Sayısı')
    katsayisi = models.IntegerField( verbose_name='Kat Sayısı')
    birkattakidairesayisi = models.IntegerField( verbose_name='Bir Kattaki Bina Sayısı')
    blokkenarsol = models.CharField(max_length=200, blank=True, verbose_name='Blok Kenar Sol')
    blokkenarsag = models.CharField(max_length=200, blank=True, verbose_name='Blok Kenar Sağ')
    blokkenaryukari = models.CharField(max_length=200, blank=True, verbose_name='Blok Kenar Yukarı')
    blokkenarasagi = models.CharField(max_length=200, blank=True, verbose_name='Blok Kenar Aşağı')

    def __str__(self):
        return str(self.projeid) + " " + self.adi


class Daireler(models.Model):
    blokid = models.ForeignKey("Bloklar",  on_delete=models.CASCADE)
    no = models.IntegerField( verbose_name="Daire No")
    fiyat = models.IntegerField(blank=True, default=0, verbose_name="Fiyat")

    def __str__(self):
        return str(self.blokid) + " No:" + str(self.no)


class Ariza_Takip(models.Model):
    daireid = models.ForeignKey("Daireler",  on_delete=models.CASCADE)
    ekleyen=models.ForeignKey("Yonetici",on_delete=models.CASCADE)
    guncelleyen=models.IntegerField(blank=True,verbose_name="Güncelleyen Kişi")
    durum=models.SmallIntegerField(default=0,verbose_name="Durum")
    sorun=models.TextField(verbose_name="Sorun")
    cozumnotu=models.TextField(blank=True,verbose_name="Çözüm Notu")
    eklenmetarihi=models.DateField(auto_now_add=True,verbose_name="Eklenme Tarihi")
    guncellenmetarihi=models.DateField(verbose_name="Güncellenme Tarihi")
    resim=models.FileField(upload_to='ariza_img/',blank=True,verbose_name="Resim")

    def __str__(self):
        return str(self.daireid) + " Ekleyen:" + str(self.ekleyen)

class Satis(models.Model):
    daireid=models.ForeignKey("Daireler",on_delete=models.CASCADE)
    odenen=models.IntegerField(default=0,verbose_name="Ödenen Miktar")
    tckimlik=models.CharField(max_length=22,verbose_name="TC Kimlik Numarası")
    adisoyadi=models.CharField(max_length=100,verbose_name="Adı Soyadı")
    telefon=models.CharField(max_length=34,blank=True,verbose_name="Telefon")
    hakkinda=models.TextField(blank=True,verbose_name="Hakkında")
    tarih=models.DateField(auto_now_add=True, verbose_name="Satış Tarihi")
    sozlesme=models.FileField(upload_to='satis_sozlesmeleri/',blank=True,verbose_name="Satış sözleşmesi")

    def __str__(self):
        return self.adisoyadi+" Daire No:"+str(self.daireid)



class Tapu_Kat_Irtifaki(models.Model):
    ekleyen=models.ForeignKey("Yonetici",on_delete=models.CASCADE)
    projeadi=models.CharField(max_length=100,verbose_name="Proje Adı")
    projebagimsizsayisi=models.IntegerField(default=0,verbose_name="Proje Bağımsız Sayısı")
    tarih=models.DateField(auto_now_add=True,verbose_name="Tarih")

    def __str__(self):
        return self.projeadi+" Bağımsız Sayısı "+str(self.projebaginsizsayisi)

class Tapu_Kat_Mulkiyeti(models.Model):
    ekleyen=models.ForeignKey("Yonetici",on_delete=models.CASCADE)
    projeadi=models.CharField(max_length=100,verbose_name="Proje Adı")
    aciklama=models.TextField(blank=True,verbose_name="Açıklama")
    tarih=models.DateField(auto_now_add=True,verbose_name="Tarih")

    def __str__(self):
        return self.projeadi

class Belge_Kaydi(models.Model):
    ekleyen=models.ForeignKey("Yonetici",on_delete=models.CASCADE)
    tur=models.SmallIntegerField(default=0,verbose_name="Tür")
    tarih=models.DateField(auto_now_add=True,verbose_name="Tarih")
    konu=models.CharField(max_length=200,verbose_name="Konu")
    kime=models.CharField(max_length=200,verbose_name="Kime")

    def __str__(self):
        return str(self.ekleyen)

class Belge_Kaydi_File(models.Model):
    kayit=models.ForeignKey("Belge_Kaydi",on_delete=models.CASCADE)
    belge=models.FileField(upload_to='belge_kaydi/',verbose_name="Belge")

class Halkla_Iliskiler(models.Model):
    ekleyen=models.ForeignKey("Yonetici",on_delete=models.CASCADE)
    tarih=models.DateTimeField(verbose_name="Tarih")
    gelen=models.CharField(max_length=100,blank=True,verbose_name="Gelen")
    gorustugu=models.CharField(max_length=100,blank=True,verbose_name="Görüştüğü Kişi")
    arayan=models.CharField(max_length=100,blank=True,verbose_name="Arayan")
    telefon=models.CharField(max_length=34,blank=True,verbose_name="Telefon")
    konu=models.TextField(blank=True,verbose_name="Konu")

    def __str__(self):
        return self.gelen +" "+ self.gorustugu

class Abonelikler(models.Model):
    ekleyen=models.ForeignKey("Yonetici",on_delete=models.CASCADE)
    tur=models.SmallIntegerField(default=0,verbose_name="Tür")
    aboneno=models.CharField(max_length=100,verbose_name="Abone No")
    adres=models.TextField(blank=True,verbose_name="Adres")
    masraf=models.CharField(max_length=100,blank=True,verbose_name="Masraf")
    projeadi=models.ForeignKey("Projeler",on_delete=models.CASCADE,blank=True)
    aciklama=models.TextField(blank=True, verbose_name="Açıklama")
    adapafta=models.CharField(max_length=30,verbose_name="Ada Pafta")
    tarih=models.DateField(auto_now_add=True,verbose_name="Tarih")

    def __str__(self):
        return self.aboneno

class Santiyeler(models.Model):
    adi=models.CharField(max_length=200,verbose_name="Adı")

    def __str__(self):
        return self.adi

class Yonetici(models.Model):
    adi=models.CharField(max_length=200,verbose_name="Adı")
    kadi=models.CharField(max_length=200,verbose_name="Kullanıcı Adı")
    sifre=models.CharField(max_length=200,verbose_name="Şifre")
    giris=models.DateTimeField(verbose_name="Son Giriş Tarihi")
    durum=models.BooleanField(default=1,verbose_name="Aktiflik Durumu")
    satispazarlama=models.BooleanField(default=0,blank=True,verbose_name="Satış Pazarlama")
    musteriportfoy=models.BooleanField(default=0,blank=True,verbose_name="Müşteri Portföy")
    santiyetakip=models.BooleanField(default=0,blank=True,verbose_name="Şantiye Takip")
    arizatakip=models.BooleanField(default=0,blank=True,verbose_name="Arıza Takip")
    tapusicil=models.BooleanField(default=0,blank=True,verbose_name="Tapu Sicil")
    abonelik=models.BooleanField(default=0,blank=True,verbose_name="Abonelik")
    halklailiskiler=models.BooleanField(default=0,blank=True,verbose_name="Halkla İlişkiler")
    belgekaydi=models.BooleanField(default=0,blank=True,verbose_name="Belge Kaydı")
    maliyet=models.BooleanField(default=0,blank=True,verbose_name="Maliyet")
    binakontrol=models.BooleanField(default=0,blank=True,verbose_name="Bina Kontrol")
    projeekle=models.BooleanField(default=0,blank=True,verbose_name="Proje Ekle")
    projeduzenle=models.BooleanField(default=0,blank=True,verbose_name="Proje Düzenle")
    projesil=models.BooleanField(default=0,blank=True,verbose_name="Proje Sil")
    blokekle=models.BooleanField(default=0,blank=True,verbose_name="Blok Ekle")
    blokduzenle=models.BooleanField(default=0,blank=True,verbose_name="Blok Düzenle")
    bloksil=models.BooleanField(default=0,blank=True,verbose_name="Blok Sil")
    daireekle=models.BooleanField(default=0,blank=True,verbose_name="Daire Ekle")
    daireduzenle=models.BooleanField(default=0,blank=True,verbose_name="Daire Düzenle")
    dairesil=models.BooleanField(default=0,blank=True,verbose_name="Daire Sil")
    satisekle=models.BooleanField(default=0,blank=True,verbose_name="Satış Ekle")
    satisduzenle=models.BooleanField(default=0,blank=True,verbose_name="Satış Düzenle")
    satissil=models.BooleanField(default=0,blank=True,verbose_name="Satış Sil")
    portfoyekle=models.BooleanField(default=0,blank=True,verbose_name="Portföy Ekle")
    portfoyduzenle=models.BooleanField(default=0,blank=True,verbose_name="Portföy Düzenle")
    portfoysil=models.BooleanField(default=0,blank=True,verbose_name="Portföy Sil")
    santiyeekle=models.BooleanField(default=0,blank=True,verbose_name="Şantiye Ekle")
    santiyeduzenle=models.BooleanField(default=0,blank=True,verbose_name="Şantiye Düzenle")
    santiyesil=models.BooleanField(default=0,blank=True,verbose_name="Şantiye Sil")
    santiyemalzemeekle=models.BooleanField(default=0,blank=True,verbose_name="Şantiye Malzeme Ekle")
    santiyemalzemeduzenle=models.BooleanField(default=0,blank=True,verbose_name="Şantiye Malzeme Düzenle")
    santiyemalzemesil=models.BooleanField(default=0,blank=True,verbose_name="Şantiye Malzeme Sil")
    arizakaydiekle=models.BooleanField(default=0,blank=True,verbose_name="Arıza Kaydı Ekle")
    arizakaydiduzenle=models.BooleanField(default=0,blank=True,verbose_name="Arıza Kaydı Düzenle")
    arizakaydisil=models.BooleanField(default=0,blank=True,verbose_name="Arıza Kaydı Sil")
    arizatakipkontrolu=models.BooleanField(default=0,blank=True,verbose_name="Arıza Takip Kontrolü")
    tapusicilekle=models.BooleanField(default=0,blank=True,verbose_name="Tapu Sicil Ekle")
    tapusicilduzenle=models.BooleanField(default=0,blank=True,verbose_name="Tapu Sicil Düzenle")
    tapusicilsil=models.BooleanField(default=0,blank=True,verbose_name="Tapu Sicil Sil")
    abonelikekle=models.BooleanField(default=0,blank=True,verbose_name="Abonelik Ekle")
    abonelikduzenle=models.BooleanField(default=0,blank=True,verbose_name="Abonelik Düzenle")
    aboneliksil=models.BooleanField(default=0,blank=True,verbose_name="Abonelik Sil")
    halklailiskilerekle=models.BooleanField(default=0,blank=True,verbose_name="Halkla İlişkiler Ekle")
    halklailiskilerduzenle=models.BooleanField(default=0,blank=True,verbose_name="Halkla İlişkiler Düzenle")
    halklailiskilersil=models.BooleanField(default=0,blank=True,verbose_name="Halkla İlişler Sil")
    belgekaydiekle=models.BooleanField(default=0,blank=True,verbose_name="Belge Kaydı Ekle")
    belgekaydiduzenle=models.BooleanField(default=0,blank=True,verbose_name="Belge Kaydı Düzenle")
    belgekaydisil=models.BooleanField(default=0,blank=True,verbose_name="Belge Kaydı Sil")
    maliyetekle=models.BooleanField(default=0,blank=True,verbose_name="Maliyet Ekle")
    maliyetduzenle=models.BooleanField(default=0,blank=True,verbose_name="Maliyet Düzenle")
    maliyetsil=models.BooleanField(default=0,blank=True,verbose_name="Maliyet Sil")
    binakontrolekle=models.BooleanField(default=0,blank=True,verbose_name="Bina Kontrol Ekle")
    binakontrolduzenle=models.BooleanField(default=0,blank=True,verbose_name="Bina Kontrol Düzenle")
    binakontrolsil=models.BooleanField(default=0,blank=True,verbose_name="Bina Kontrol Sil")
    yoneticiekle=models.BooleanField(default=0,blank=True,verbose_name="Yönetici Ekle")
    yoneticiduzenle=models.BooleanField(default=0,blank=True,verbose_name="Yönetici Düzenle")
    yoneticisil=models.BooleanField(default=0,blank=True,verbose_name="Yönetici Sil")

    def __str__(self):
        return self.adi+" "+str(self.giris)

class Santiye_Takip(models.Model):
    editorid=models.ForeignKey("Yonetici",on_delete=models.CASCADE,blank=True)
    santiyeid=models.ForeignKey("Santiyeler",on_delete=models.CASCADE)
    faturano=models.CharField(max_length=100,blank=True,verbose_name="Fatura No")
    irsaliyeno=models.CharField(max_length=100,blank=True,verbose_name="İrsaliye No")
    tedarikci=models.CharField(max_length=600,blank=True,verbose_name="Tedarikçi")
    malzemeadi=models.CharField(max_length=400,verbose_name="Malzeme Adı")
    malzememiktari=models.CharField(max_length=100,verbose_name="Malzeme Miktarı")
    tarih=models.DateField(auto_now_add=True,verbose_name="Tarih")

    def __str__(self):
        return self.tedarikci+" "+self.malzemeadi

class Maliyet_Projeler(models.Model):
    projeadi=models.ForeignKey("Projeler",on_delete=models.CASCADE)
    reelmaliyet=models.CharField(max_length=400,verbose_name="Reel Maliyet")

    def __str__(self):
        return str(self.projeadi)+" Reel Maliyet: "+str(self.reelmaliyet)


class Maliyet_Kategori(models.Model):
    adi=models.CharField(max_length=100,verbose_name="Adı")
    def __str__(self):
        return self.adi

class Maliyet_Madde(models.Model):
    adi=models.CharField(max_length=100,verbose_name="Adı")
    kategori=models.ForeignKey("Maliyet_Kategori",on_delete=models.CASCADE)

    def __str__(self):
        return self.adi

class Maliyet_Kayit(models.Model):
    ekleyen=models.ForeignKey("Yonetici",on_delete=models.CASCADE)
    projeid=models.ForeignKey("Maliyet_Projeler",on_delete=models.CASCADE)
    kategori=models.ForeignKey("Maliyet_Kategori",on_delete=models.CASCADE)
    maddeid=models.ForeignKey("Maliyet_Madde",on_delete=models.CASCADE)
    birimfiyat=models.FloatField(default=0,blank=True,verbose_name="Birim Fiyatı")
    adet=models.FloatField(default=0,blank=True,verbose_name="Adet")
    hakkinda=models.CharField(max_length=400,blank=True,verbose_name="Hakkında")

    def __str__(self):
        return str(self.maddeid)+" Birim Fiyatı: "+str(self.birimfiyat)

class Tapu_Alis(models.Model):
    ekleyen=models.ForeignKey("Yonetici",on_delete=models.CASCADE)
    gayrimenkul=models.CharField(max_length=100,verbose_name="Gayrimenkul")
    tapusahibi=models.CharField(max_length=100,verbose_name="Tapu Sahibi")
    tarih=models.DateField(auto_now_add=True,verbose_name="Tarih")
    adapafta=models.CharField(max_length=30,verbose_name="Ada Pafta")
    gayrimenkulalisbedeli=models.CharField(max_length=40,blank=True,verbose_name="Gayrimenkul Alış Bedeli")
    masraf=models.CharField(max_length=100,blank=True,verbose_name="Masraf")
    oncekisahibi=models.CharField(max_length=100,blank=True,verbose_name="Önceki Sahibi")
    oncekisahibihakkinda=models.TextField(verbose_name="Önceki Sahibi Hakkında")

    def __str__(self):
        return self.tapusahibi+" "+self.gayrimenkulalisbedeli

class Tapu_Satis(models.Model):
    ekleyen=models.ForeignKey("Yonetici",on_delete=models.CASCADE)
    daireid=models.ForeignKey("Daireler",on_delete=models.CASCADE)
    daireadi=models.CharField(max_length=200,blank=True,verbose_name="Daire Adı")
    adisoyadi=models.CharField(max_length=100,verbose_name="Adı Sayadı")
    meslek=models.CharField(max_length=100,blank=True,verbose_name="Mesleği")
    adres=models.TextField(blank=True,verbose_name="Adres")
    telefon=models.CharField(max_length=34,blank=True,verbose_name="Telefon")
    masraf=models.CharField(max_length=100,blank=True,verbose_name="Masraf")
    tarih=models.DateField(auto_now_add=True,verbose_name="Tarih")

    def __str__(self):
        return self.adisoyadi+" "+self.masraf

class Portfoy_Kayit(models.Model):
    adisoyadi=models.CharField(max_length=100,verbose_name="Adı Soyadı")
    telefonev=models.CharField(max_length=34,blank=True,verbose_name="Telefon Ev")
    telefoncep=models.CharField(max_length=34,blank=True,verbose_name="Telefon Cep")
    meslek=models.CharField(max_length=100,blank=True,verbose_name="Meslek")
    hakkinda=models.TextField(blank=True,verbose_name="Hakkında")
    fiyataraligimin=models.IntegerField(blank=True,verbose_name="Fiyat Aralığı Minimum")
    fiyataraligimax=models.IntegerField(blank=True,verbose_name="Fiyat Aralığı Maximum")
    ilce=models.CharField(max_length=100,blank=True,verbose_name="İlçe")
    odasayisi=models.CharField(max_length=200,blank=True,verbose_name="Oda Sayısı")
    emlakturu=models.CharField(max_length=200,blank=True,verbose_name="Emlak Türü")
    satinalmaturu=models.SmallIntegerField(blank=True,verbose_name="Satın Alma Türü")
    tarih=models.DateField(auto_now_add=True,verbose_name="Tarih")

    def __str__(self):
        return self.adisoyadi+" "+self.ilce+" "+self.emlakturu

class Bina_Kontrol(models.Model):
    ekleyen=models.ForeignKey("Yonetici",on_delete=models.CASCADE)
    projeadi=models.ForeignKey("Projeler",on_delete=models.CASCADE)
    hakkinda=models.TextField(db_column='hakkinda')
    tarih=models.DateField(verbose_name="Tarih")
    eklenmetarihi=models.DateField(auto_now_add=True,verbose_name="Ekleneme Tarih")

    def __str__(self):
        return str(self.ekleyen)+" "+self.projeadi

class Bina_Kontrol_File(models.Model):
    kayit=models.ForeignKey("Bina_Kontrol",on_delete=models.CASCADE)
    belge=models.FileField(upload_to='bina_kontrol/',verbose_name="Belge")

class Il(models.Model):
    il=models.CharField(max_length=100,verbose_name="İl")

    def __str__(self):
        return self.il

class Ilce(models.Model):
    kayit=models.ForeignKey("Il",on_delete=models.CASCADE)
    ilce=models.CharField(max_length=100,verbose_name="İl")
    def __str__(self):
        return str(self.kayit)+" - "+self.ilce

#View Kısımları

class v_satis(models.Model):

    projeid=models.IntegerField(db_column='projeid')
    projeadi=models.CharField(max_length=200,db_column='projeadi')
    blokid=models.IntegerField(db_column='blokid')
    blokadi=models.CharField(max_length=200,db_column='blokadi')
    daireid=models.IntegerField(db_column='daireid')
    daireno=models.IntegerField(db_column='daireno')
    fiyat=models.IntegerField(db_column='fiyat')
    satisid=models.IntegerField(db_column='satisid')
    odenen=models.IntegerField(db_column='odenen')
    tckimlik=models.CharField(max_length=22,db_column='tckimlik')
    adisoyadi=models.CharField(max_length=510,db_column='adisoyadi')
    telefon=models.CharField(max_length=34,db_column='telefon')
    hakkinda=models.TextField(db_column='hakkinda')

    class Meta:
        managed = False
        db_table = 'v_satis'

    def __str__(self):
        return str(self.projeadi)+str(self.blokadi)+str(self.daireno)+str(self.odenen)+str(self.adisoyadi)

class v_tapu_satis(models.Model):

    daire=models.CharField(max_length=200,db_column='daire')
    ekleyen=models.CharField(max_length=200,db_column='ekleyen')
    tapu_satis_id=models.IntegerField(db_column='tapu_satis_id')
    adisoyadi=models.CharField(max_length=100,db_column="adisoyadi")
    meslek=models.CharField(max_length=100,db_column='meslek')
    adres=models.TextField(blank=True,db_column='adres')
    telefon=models.CharField(max_length=34,db_column='telefon')
    masraf=models.CharField(max_length=100,db_column="masraf")
    tarih=models.DateField(db_column='tarih')
    daireid=models.IntegerField(db_column='daireid')
       

    class Meta:
        managed = False
        db_table = 'v_tapu_satis'

class v_detay(models.Model):

    projeid=models.IntegerField(db_column='projeid')
    projeadi=models.CharField(max_length=100,db_column='projeadi')
    blokid=models.IntegerField(db_column='blokid')
    blokadi=models.CharField(max_length=200,db_column='blokadi')
    katsayisi=models.IntegerField(db_column='katsayisi')
    birkattakidairesayisi=models.IntegerField(db_column='birkattakidairesayisi')
    odasayisi=models.CharField(max_length=8,db_column='odasayisi')
    metrekare=models.IntegerField(db_column='metrekare')
    blokkenarsol = models.CharField(max_length=200,db_column='blokkenarsol')
    blokkenarsag = models.CharField(max_length=200,db_column='blokkenarsag')
    blokkenaryukari = models.CharField(max_length=200,db_column='blokkenaryukari')
    blokkenarasagi = models.CharField(max_length=200, blank=True,db_column='blokkenarasagi')

    class Meta:
        managed = False
        db_table = 'v_detay'

class v_ariza_takip(models.Model):

    ariza_takip_id=models.IntegerField(db_column='ariza_takip_id')
    durum=models.SmallIntegerField(db_column='durum')
    sorun=models.TextField(db_column='sorun')
    ekleyen=models.IntegerField(db_column='ekleyen')
    eklenmetarihi=models.DateField(db_column='eklenmetarihi')
    guncelleyen=models.IntegerField(db_column='guncelleyen')
    guncellenmetarihi=models.DateField(db_column='guncellenmetarihi')
    title=models.CharField(max_length=200,db_column='title')
    adisoyadi=models.CharField(max_length=100,db_column='adisoyadi')
    cozumNotu=models.TextField(db_column='cozumNotu')
    projeid=models.IntegerField(db_column='projeid')
    blokid=models.IntegerField(db_column='blokid')
    daireid_id=models.IntegerField(db_column='daireid_id')

    class Meta:
            managed = False
            db_table = 'v_ariza_takip'

class v_detay_2(models.Model):

    daireid=models.IntegerField(db_column='daireid')
    blokid_id=models.IntegerField(db_column='blokid_id')
    fiyat=models.IntegerField(db_column='fiyat')
    satisid=models.IntegerField(db_column='satisid')
    odenen=models.IntegerField(db_column='odenen')
    daireno=models.IntegerField(db_column='daireno')
    adisoyadi=models.CharField(max_length=100,db_column='adisoyadi')

    class Meta:
            managed = False
            db_table = 'v_detay_2'

class v_santiye_malzemeler(models.Model):

    santiye_takip_id=models.IntegerField(db_column='santiye_takip_id')
    editoradi=models.CharField(max_length=200,db_column='editoradi')
    santiyeadi=models.CharField(max_length=200,db_column='santiyeadi')
    santiyeid=models.IntegerField(db_column='santiyeid')
    malzemeadi=models.CharField(max_length=400,db_column='malzemeadi')
    malzememiktari=models.CharField(max_length=100,db_column='malzememiktari')
    tarih=models.DateField(db_column='tarih')
    tedarikci=models.CharField(max_length=600,db_column='tedarikci')
    irsaliyeno=models.CharField(max_length=100,db_column='irsaliyeno')
    faturano=models.CharField(max_length=100,db_column='faturano')

    class Meta:
            managed = False
            db_table = 'v_santiye_malzemeler'