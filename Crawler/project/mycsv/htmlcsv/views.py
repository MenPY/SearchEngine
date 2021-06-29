from django.shortcuts import render
import requests, csv, os

path = os.path.join(os.path.dirname(os.path.realpath(__file__)), 'db.csv')

def listToStr(list1):
    return str(list1).replace('[','').replace(']',' ').replace('\'',' ').replace(',','')

def output(request):
    mylist = []
    with open(path, 'r') as file:
        reader = csv.reader(file)
        for row in reader:
            mylist.append(row)
        my_input = request.POST.get('my_input')
        foo = []
        i = j = k = 0
        while i < len(mylist): 
            if listToStr(my_input) in listToStr(mylist[i]) and listToStr(my_input) != '':
                foo.append('<tr>')
                foo.append('<img src="'+ listToStr(mylist[i])+'" width="320" height="200"')
            j += 1
            i += 1  
          
        final = listToStr(foo)
    return render(request, 'index.html',{'row' : final})