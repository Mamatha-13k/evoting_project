from django.shortcuts import render
from adminapp.models import *
from voterapp.models import *
from mainapp.models import *
# Create your views here.
def home(request):
          election_count=AddElection.objects.count()
          candi_count=AddCandiModel.objects.count()
          voters_count= VoterRegisterModel.objects.count()  
          return render(request,'main/index.html',{'election_count':election_count,'candi_count':candi_count,'voters_count':voters_count})

def about(request):
          election_count=AddElection.objects.count()
          candi_count=AddCandiModel.objects.count()
          voters_count= VoterRegisterModel.objects.count()  
          return render(request,'main/about.html',{'election_count':election_count,'candi_count':candi_count,'voters_count':voters_count})

def election(request):
          return render(request,'main/election.html')

def contact(request):
          if request.method == "POST":
                 name =request.POST.get("name")
                 email =request.POST.get("email") 
                 subject =request.POST.get("Subject")
                 message =request.POST.get("message")
                 contactModel.objects.create(name=name,email=email,subject=subject,message=message)   
          return render(request,'main/contact.html')