from django.shortcuts import render
from insaatWeb import models
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages
from datetime import datetime,date
import random


def index(request):
    return render(request,'index.html',
        context={
        }, # num_visits appended
    )

