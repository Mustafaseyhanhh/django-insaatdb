from django import template

register = template.Library()

@register.filter
def to_and(value):
    return value.replace("'","").replace("[","").replace("]","")

@register.filter
def to_miktar(value):
    x=value.split(" ")
    yeni=""
    for i in range(len(x)-1):
        yeni+= yeni+" "+x[i]
    return yeni

@register.filter
def multiply(value, arg):
    return value*arg