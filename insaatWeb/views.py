from insaatWeb.include import *
from insaatWeb.models import v_satis



# Create your views here.
def a(a):
    print("-"*50)
    print (a)




def test(request):
    a=models.v_satis.objects.all()
    return render(request,'test.html',
        context={
        "a":a,
        }, # num_visits appended
    )

