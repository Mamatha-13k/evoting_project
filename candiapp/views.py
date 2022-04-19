import profile
from django.shortcuts import render, redirect, get_object_or_404
from adminapp.models import  AddCandiModel
from django.contrib import messages
# Create your views here.
def candi_login(request):
           if request.method == "POST":
               gmail = request.POST.get("email")
               password = request.POST.get("Password")
               try:
                 check = AddCandiModel.objects.get(gmail=gmail,password=password ) 
                 request.session["candi_id"]= check.candi_id
                 messages.success(request,"Valid Login")
                 return redirect ("candi-profile")
               except:
                    messages.error(request,"Valid Login")      
        
        
           return render(request,'candi/candi-login.html')

def candi_password(request,id):
          candi_password=AddCandiModel.objects.filter(candi_id=id)  
          obj=get_object_or_404(AddCandiModel,candi_id=id)
          if request.method=='POST':
             gmail=request.POST.get('email')
             password=request.POST.get('Password1')
             obj.gmail=gmail
             obj.password=password
             obj.save()
             return redirect('candi-profile')
          return render(request,'candi/candi-password.html',{'candi_password':candi_password})

def candi_profile(request):
          candi_id=request.session["candi_id"] 
          profile=AddCandiModel.objects.filter(candi_id=candi_id) 
          return render(request,'candi/candi-profile.html',{'profile':profile})

def candi_results(request):
          return render(request,'candi/candi-result.html')
    