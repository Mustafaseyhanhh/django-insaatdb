from django.shortcuts import render
from . import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages
from datetime import datetime,date
import random
from insaatWeb.models import Projeler
from insaatWeb.views_ek.login_view import *
from insaatWeb.views_ek.satis_view import *
from insaatWeb.views_ek.index_view import *
from insaatWeb.views_ek.portfoy_view import *
from insaatWeb.views_ek.santiye_view import *
from insaatWeb.views_ek.takip_view import *
from insaatWeb.views_ek.tapusicil_view import *
from insaatWeb.views_ek.abonelik_view import *
from insaatWeb.views_ek.halklailiskiler_view import *
from insaatWeb.views_ek.belgekaydi_view import *
from insaatWeb.views_ek.binakontrol_view import *
from insaatWeb.views_ek.kullanicilar_view import *
from insaatWeb.views_ek.maliyet_view import *
from insaatWeb.views_ek.rapors_view import *


