import profile
from unicodedata import name
from django.shortcuts import render, redirect,get_object_or_404
from voterapp.models import VoteModel, VoterRegisterModel
from adminapp.models import *
from django.contrib import messages

# Create your views here.
def voter_login(request):
          if request.method == "POST":
               gmail = request.POST.get("email")
               password = request.POST.get("Password")
               try:
                 check =VoterRegisterModel.objects.get(gmail=gmail,password=password)
                         
                 request.session["voter_id"]= check.voter_id
                 messages.success(request,"valid login") 
                 return redirect ("voter-profile")
             
               except:
                   messages.error(request,"Invalid Login Attempt.....plz try again")      
        
          return render(request,'voter/voter-login.html')

def voter_profile(request):
          voter_id=request.session["voter_id"]
          profile=VoterRegisterModel.objects.filter(voter_id=voter_id)
          return render(request,'voter/voter-profile.html',{'profile':profile})

def voter_reg(request):
         
        if request.method=='POST' and request.FILES['aadhar'] and request.FILES['passphoto']:
          print("this is voter ")
          name= request.POST.get('name')
          phone=request.POST.get('phone number')
          gender=request.POST.get('Gender')
          aadhar=request.FILES['aadhar']
          voterid=request.POST.get('voterid')
          age=request.POST.get('age')
          gmail=request.POST.get('email')
          passphoto=request.FILES['passphoto']
          password=request.POST.get('password')
          voter_type=request.POST.get('voter_type')
          
          VoterRegisterModel.objects.create(name=name,phone=phone,gender=gender,Aadhar=aadhar,voterid=voterid,age=age,gmail=gmail,passphoto=passphoto,password=password,voter_type=voter_type)
      
          
          
        return render(request,'voter/voter-reg.html')

def voter_results(request):
          return render(request,'voter/voter-results.html')

def voter_votes(request):
        
          data = CandidateElectionModel.objects.all()
          context = {'data':data}
          return render(request,'voter/voter-votes.html',context=context)

def voter_vote(request,id):
         
          data=CandidateElectionModel.objects.filter(candidate_id=id)  
          voter_id=request.session["voter_id"]
          if request.method=='POST':
            #  election_id=request.POST.get('election_id')
            voted_or_not = VoteModel.objects.filter(voter_id=voter_id).filter(status=1)
            if voted_or_not != None:
              print('vote check')
              messages.error(request,"Already Voted...")
            else:
              print('else check')
              election=request.POST.get('election')
              partyname=request.POST.get('party')
              candidate=request.POST.get('candidate')
              VoteModel.objects.create(voter_id=voter_id,election=election,partyname=partyname,candidate=candidate,status=True)
              messages.success(request,"Vote Successful")
          return render(request,'voter/voter-voting.html',{'voting':data})
            
           
  