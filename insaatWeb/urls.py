from django.urls import path
from django.conf import settings
from . import views
from django.conf.urls.static import static

urlpatterns = [
    #path('login', views.login_page, name='login_page'),
    path('index', views.index, name='index'),
    path('', views.login, name='login'),#login
    path('loginfuc', views.login_fuc, name='login_fuc'),
    path('logoutfuc', views.log_out_fuc, name='log_out_fuc'),
    path('lognewfuc', views.log_new_fuc, name='log_new_fuc'),

    path('satis/projeler', views.satis_projeler, name='satis-projeler'),
    path('satis/projeler/eklefuc', views.satis_projeler_ekle_fuc, name='satis-projeler-ekle-fuc'),
    path('satis/projeler/duzenlefuc', views.satis_projeler_duzenle_fuc, name='satis-projeler-duzenle-fuc'),
    path('satis/projeler/silfuc', views.satis_projeler_sil_fuc, name='satis-projeler-sil-fuc'),


    path('satis/projeler/<int:pid>/<int:num>', views.satis_projeler_detay, name='satis-projeler-detay-bloklar-list'),
    path('satis/projeler/blokekle/<int:pid>', views.satis_projeler_blok_ekle, name='satis-projeler-blok-ekle'),
    path('satis/projeler/blokeklefuc/<int:pid>', views.satis_projeler_blok_ekle_fuc, name='satis-projeler-blok-ekle-fuc'),
    path('satis/projeler/duzenle/<int:pid>/<int:blokid>', views.satis_projeler_blok_duzenle, name='satis-projeler-blok-duzenle'),
    path('satis/projeler/duzenlefuc/<int:pid>/<int:blokid>', views.satis_projeler_blok_duzenle_fuc, name='satis-projeler-blok-duzenle-fuc'),
    path('satis/projeler/bloksilfuc/<int:pid>/<int:blokid>', views.satis_projeler_blok_sil_fuc, name='satis-projeler-blok-sil-fuc'),

    path('satis/projeler/duzenle/<int:pid>/<int:blokid>/<int:no>', views.satis_projeler_daire_duzenle, name='satis-projeler-daire-duzenle'),
    path('satis/projeler/duzenle/<int:pid>/<int:blokid>/<int:no>/kaydet', views.satis_projeler_daire_duzenle_kaydet, name='satis-projeler-daire-duzenle-kaydet'),
    path('satis/projeler/duzenle/<int:pid>/<int:blokid>/<int:no>/satisiptal', views.satis_projeler_daire_duzenle_satisiptal, name='satis-projeler-daire-duzenle-satisiptal'),
    path('satis/projeler/duzenle/<int:id>/sozlesmesil', views.satis_projeler_daire_duzenle_sozlesme_sil, name='satis-projeler-daire-duzenle-sozlesme-sil'),
    
    path('satis/projeler/blok/<int:pid>/daireeklefuc', views.satis_projeler_blok_daire_ekle_fuc, name='satis-projeler-blok-daire-ekle-fuc'),
   
    path('portfoy', views.portfoy, name='satis-portfoy'),
    path('portfoy/ekle', views.portfoy_ekle, name='satis-portfoy-ekle'),
    path('portfoy/eklefuc', views.portfoy_ekle_fuc, name='satis-portfoy-ekle-fuc'),
    path('portfoy/duzenle/<int:id>', views.portfoy_duzenle, name='satis-portfoy-duzenle'),
    path('portfoy/sil/<int:id>', views.portfoy_sil_fuc, name='satis-portfoy-sil'),



    path('santiyeler', views.santiyeler, name='santiyeler'),
    path('santiyeler/eklefuc', views.santiyeler_ekle_fuc, name='santiyeler-ekle-fuc'),
    path('santiyeler/duzenlefuc', views.santiyeler_duzenle_fuc, name='santiyeler-duzenle-fuc'),
    path('santiyeler/malzemeler', views.santiyeler_malzemeler, name='santiyeler-malzemeler'),
    path('santiyeler/malzemeler/<int:id>', views.santiyeler_malzemeler_fuc, name='santiyeler-malzemeler-fuc'),
    path('santiyeler/malzemeler/giris', views.santiyeler_malzemeler_giris, name='santiyeler-malzemeler-giris'),
    path('santiyeler/malzemeler/giris/<int:id>', views.santiyeler_malzemeler_giris_id, name='santiyeler-malzemeler-giris-id'),
    path('santiyeler/malzemeler/giris/eklefuc', views.santiyeler_malzemeler_giris_ekle_fuc, name='santiyeler-malzemeler-giris-ekle-fuc'),
    path('santiyeler/malzemeler/giris/<int:id>', views.santiyeler_malzemeler_giris_fuc, name='santiyeler-malzemeler-giris-fuc'),
    path('santiyeler/malzemeler/sil/<int:id>', views.santiye_malzeme_sil, name='santiyeler-malzemeler-sil'),
    path('santiyeler/malzemeler/silid/<int:id>', views.santiye_malzeme_sil_id, name='santiyeler-malzemeler-sil-id'),
    path('santiyeler/malzemeler/duzenle/<int:id>', views.santiye_malzeme_duzenle, name='santiyeler-malzemeler-duzenle'),
    path('santiyeler/malzemeler/duzenlefuc/<int:id>', views.santiye_malzeme_duzenle_fuc, name='santiyeler-malzemeler-duzenle-fuc'),

    path('takip/kayitlar', views.takip, name='takip'),
    path('takip/kayitlar/bekle', views.takip_bekle, name='takip'),
    path('takip/kayitlar/gider', views.takip_gider, name='takip'),
    path('takip/kayitlar/devam', views.takip_devam, name='takip'),
    path('takip/olustur/<int:pid>/<int:blokid>/<int:no>', views.takip_olustur, name='takip-olustur'),
    path('takip/olusturfuc/<int:pid>/<int:blokid>/<int:no>', views.takip_olustur_fuc, name='takip-olustur-fuc'),
    path('takip/arizagider/<int:id>', views.ariza_gider, name='ariza-gider'),
    path('takip/arizadevam/<int:id>', views.ariza_devam, name='ariza-devam'),
    path('takip/arizabekle/<int:id>', views.ariza_bekle, name='ariza-bekle'),
    path('takip/arizasil/<int:id>', views.ariza_sil, name='ariza-sil'),
    path('takip/duzenle/<int:id>', views.takip_olustur_duzenle, name='takip-olustur-duzenle'),
    path('takip/duzenlefuc/<int:id>', views.takip_olustur_duzenle_fuc, name='takip-olustur-duzenle-fuc'),
    path('takip/duzenlefuc/resimsil/<int:id>', views.takip_olustur_duzenle_fuc_resimsil, name='takip-olustur-duzenle-fuc-resimsil'),

    path('tapusicil/tapusatis/kayitlar', views.tapusicil_tapusatis_kayitlar, name='takip'),
    path('tapusicil/tapusatis/ekle/<int:daireid>', views.tapusicil_tapusatis_kayitlar_ekle, name='takip'),
    path('tapusicil/tapusatis/eklefuc/<int:daireid>', views.tapusicil_tapusatis_kayitlar_ekle_fuc, name='takip'),
    path('tapusicil/tapusatis/duzenle/<int:daireid>', views.tapusicil_tapusatis_kayitlar_duzenle, name='takip'),
    path('tapusicil/tapusatis/duzenlefuc/<int:daireid>', views.tapusicil_tapusatis_kayitlar_duzenle_fuc, name='takip'),
    path('tapusicil/tapusatis/silfuc/<int:daireid>', views.tapusicil_tapusatis_kayitlar_sil_fuc, name='takip'),
    path('tapusicil/tapualis/kayitlar', views.tapusicil_tapualis_kayitlar, name='takip'),
    path('tapusicil/tapualis/ekle', views.tapusicil_tapualis_kayitlar_ekle, name='takip'),
    path('tapusicil/tapualis/eklefuc', views.tapusicil_tapualis_kayitlar_ekle_fuc, name='takip'),
    path('tapusicil/tapualis/duzenle/<int:alisid>', views.tapusicil_tapualis_kayitlar_duzenle, name='takip'),
    path('tapusicil/tapualis/duzenlefuc/<int:alisid>', views.tapusicil_tapualis_kayitlar_duzenle_fuc, name='takip'),
    path('tapusicil/tapualis/silfuc/<int:alisid>', views.tapusicil_tapualis_kayitlar_sil_fuc, name='takip'),
    path('tapusicil/katirtifaki/kayitlar', views.tapusicil_katirtifaki_kayitlar, name='takip'),
    path('tapusicil/katirtifaki/kayitlar/eklefuc', views.tapusicil_katirtifaki_kayitlar_ekle_fuc, name='takip'),
    path('tapusicil/katirtifaki/kayitlar/duzenlefuc', views.tapusicil_katirtifaki_kayitlar_duzenle_fuc, name='takip'),
    path('tapusicil/katirtifaki/kayitlar/silfuc/<int:id>', views.tapusicil_katirtifaki_kayitlar_sil_fuc, name='takip'),
    path('tapusicil/katmulkiyeti/kayitlar', views.tapusicil_katmulkiyeti_kayitlar, name='takip'),
    path('tapusicil/katmulkiyeti/kayitlar/eklefuc', views.tapusicil_katmulkiyeti_kayitlar_ekle_fuc, name='takip'),
    path('tapusicil/katmulkiyeti/kayitlar/duzenlefuc', views.tapusicil_katmulkiyeti_kayitlar_duzenle_fuc, name='takip'),
    path('tapusicil/katmulkiyeti/kayitlar/silfuc/<int:id>', views.tapusicil_katmulkiyeti_kayitlar_sil_fuc, name='takip'),

    path('abonelik/hepsi', views.abonelik_hepsi, name='takip'),
    path('abonelik/ekle', views.abonelik_ekle, name='takip'),
    path('abonelik/eklefuc', views.abonelik_ekle_fuc, name='takip'),
    path('abonelik/duzenle/<int:id>', views.abonelik_duzenle, name='takip'),
    path('abonelik/duzenlefuc/<int:id>', views.abonelik_duzenle_fuc, name='takip'),
    path('abonelik/silfuc/<int:id>', views.abonelik_sil_fuc, name='takip'),
    path('abonelik/medas', views.abonelik_medas, name='takip'),
    path('abonelik/koski', views.abonelik_koski, name='takip'),
    path('abonelik/enerya', views.abonelik_enerya, name='takip'),

    path('halklailiskiler/kayitlar', views.halklailiskiler_kayitlar, name='takip'),
    path('halklailiskiler/kayitekle', views.halklailiskiler_kayit_ekle, name='takip'),
    path('halklailiskiler/kayiteklefuc', views.halklailiskiler_kayit_ekle_fuc, name='takip'),
    path('halklailiskiler/kayitduzenle/<int:id>', views.halklailiskiler_kayit_duzenle, name='takip'),
    path('halklailiskiler/kayitduzenlefuc/<int:id>', views.halklailiskiler_kayit_duzenle_fuc, name='takip'),
    path('halklailiskiler/kayitsilfuc/<int:id>', views.halklailiskiler_kayit_sil_fuc, name='takip'),

    path('belge/kayitlar', views.belge_kayitlar, name='takip'),
    path('belge/kayitlar/ekle', views.belge_kayitlar_ekle, name='takip'),
    path('belge/kayitlar/eklefuc', views.belge_kayitlar_ekle_fuc, name='takip'),
    path('belge/kayitlar/duzenle/<int:id>', views.belge_kayitlar_duzenle, name='takip'),
    path('belge/kayitlar/duzenlefuc/<int:id>', views.belge_kayitlar_duzenle_fuc, name='takip'),
    path('belge/kayitlarsil/<int:id>', views.belge_kayitlar_sil_fuc, name='takip'),
    path('belge/giden', views.belge_giden, name='takip'),
    path('belge/gelen', views.belge_gelen, name='takip'),
    path('belge/yukle', views.belge_yukle, name='takip'),
    path('belge/yukle/dosyasil/<int:id>', views.belge_yukle_dosya_sil, name='takip'),
    path('belge/yukle/tek/<int:id>', views.belge_yukle_tek, name='takip'),

    path('binakontrol/kayitlar', views.binakontrol_kayitlar, name='takip'),
    path('binakontrol/ekle', views.binakontrol_ekle, name='takip'),
    path('binakontrol/eklefuc', views.binakontrol_ekle_fuc, name='takip'),
    path('binakontrol/duzenle/<int:id>', views.binakontrol_duzenle, name='takip'),
    path('binakontrol/duzenlefuc/<int:id>', views.binakontrol_duzenle_fuc, name='takip'),
    path('binakontrol/silfuc/<int:id>', views.binakontrol_sil_fuc, name='takip'),
    path('binakontrol/dosyasilfuc/<int:id>', views.binakontrol_dosya_sil_fuc, name='takip'),

    path('kullanicilar/liste', views.kullanicilar_liste, name='takip'),
    path('kullanicilar/ekle', views.kullanicilar_ekle, name='takip'),
    path('kullanicilar/eklefuc', views.kullanicilar_ekle_fuc, name='takip'),
    path('kullanicilar/duzenle/<int:id>', views.kullanicilar_duzenle, name='takip'),
    path('kullanicilar/duzenlefuc/<int:id>', views.kullanicilar_duzenle_fuc, name='takip'),
    path('kullanicilar/profil', views.profil, name='takip'),
    path('kullanicilar/profilfuc/<int:id>', views.profil_fuc, name='takip'),

    path('maliyet/projeler', views.maliyet_projeler, name='takip'),
    path('maliyet/projeler/eklefuc', views.maliyet_projeler_ekle_fuc, name='takip'),
    path('maliyet/projeler/duzenlefuc', views.maliyet_projeler_duzenle_fuc, name='takip'),
    path('maliyet/projeler/<int:pid>/kategoriler', views.maliyet_projeler_kategori, name='takip'),
    path('maliyet/projeler/<int:pid>/kategoriler/eklefuc', views.maliyet_projeler_kategori_eklefuc, name='takip'),
    path('maliyet/projeler/<int:pid>/kategoriler/duzenlefuc', views.maliyet_projeler_kategori_duzenlefuc, name='takip'),
    path('maliyet/projeler/<int:pid>/kategoriler/<int:katid>', views.maliyet_projeler_kategori_katid, name='takip'),
    path('maliyet/projeler/<int:pid>/kategoriler/<int:katid>/maddeeklefuc', views.maliyet_projeler_kategori_katid_maddeekle_fuc, name='takip'),
    path('maliyet/projeler/<int:pid>/kategoriler/<int:katid>/maddesilfuc', views.maliyet_projeler_kategori_katid_maddesil_fuc, name='takip'),
    path('maliyet/projeler/<int:pid>/kategoriler/<int:katid>/kayit/<int:maddeid>', views.maliyet_projeler_kategori_katid_maddeid_ekle, name='takip'),
    path('maliyet/projeler/<int:pid>/kategoriler/kayitsil/<int:kayitid>', views.maliyet_projeler_kategori_katid_maddeid_sil, name='takip'),



#rapor
    path('satis/raporolustur', views.satis_rapor_olustur, name='satis-portfoy'),
    path('satis/rapor/ajaxblok', views.satis_rapor_olustur_ajax_blok, name='satis-portfoy'),
    path('satis/rapor', views.satis_rapor, name='satis-portfoy'),

    path('portfoy/raporolustur', views.portfoy_rapor_olustur, name='satis-portfoy'),
    path('portfoy/rapor', views.portfoy_rapor, name='satis-portfoy'),

    path('santiyeler/raporolustur', views.santiyeler_rapor_olustur, name='satis-portfoy'),
    path('santiyeler/rapor', views.santiyeler_rapor, name='satis-portfoy'),
    path('santiyeler/rapor/ajaxtedarik', views.santiyeler_rapor_ajax_tedarik, name='satis-portfoy'),
    path('santiyeler/rapor/ajaxmalzeme', views.santiyeler_rapor_ajax_malzeme, name='satis-portfoy'),

    path('takip/raporolustur', views.takip_rapor_olustur, name='satis-portfoy'),
    path('takip/rapor', views.takip_rapor, name='satis-portfoy'),

    path('abonelik/raporolustur', views.abonelik_rapor_olustur, name='satis-portfoy'),
    path('abonelik/rapor', views.abonelik_rapor, name='satis-portfoy'),

    path('halklailiskiler/raporolustur', views.halklailiskiler_rapor_olustur, name='satis-portfoy'),
    path('halklailiskiler/rapor', views.halklailiskiler_rapor, name='satis-portfoy'),

    path('belge/raporolustur', views.belge_rapor_olustur, name='satis-portfoy'),
    path('belge/rapor', views.belge_rapor, name='satis-portfoy'),


    path('test', views.test, name='test'),
    #path('satis/projeler/duzenle', views.satis_projeler_duzenle, name='satis-projeler-duzenle'),
    
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)