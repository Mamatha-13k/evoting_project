from asyncio.windows_events import NULL
from cgitb import html, text
from unicodedata import name
from django.shortcuts import render, redirect, get_object_or_404
from adminapp.models import *
from voterapp.models import *
from django.core.mail import EmailMultiAlternatives
from evoting.settings import DEFAULT_FROM_EMAIL
from django.contrib import messages

import smtplib



# Create your views here.
def admin_home(request):
          voters=VoterRegisterModel.objects.all() 
          election_count = AddElection.objects.count() 
          voters_count= VoterRegisterModel.objects.count() 
          candi_count=AddCandiModel.objects.count() 
          party_count=AddPartyModel.objects.count() 
          return render (request,'adminfolder/public/admin-index.html',{'voters':voters,'election_count':election_count,'voters_count':voters_count,
                          'candi_count':candi_count,'party_count':party_count                                              })

def add_candi(request):
       
          if request.method=='POST'and request.FILES['aadharcard'] and request.FILES['castecerfi'] and request.FILES['passphoto']:
             print('this is camdii')
             name=request.POST.get('name')     
             partyname=request.POST.get('party')      
             fathername=request.POST.get('fathername')  
             phone=request.POST.get('phone')     
             gmail=request.POST.get('gmail')      
             caste=request.POST.get('caste') 
             quali=request.POST.get('qualification')    
             aadhar=request.FILES['aadharcard']    
             castecertificate=request.FILES['castecerfi']    
             passphoto=request.FILES['passphoto']  
             
             password=request.POST.get('password')
           
         
              
             AddCandiModel.objects.create(name=name,partyname=partyname,fathername=fathername,phone=phone,gmail=gmail,caste=caste,quali=quali,aadhar=aadhar,castecertificate=castecertificate,passphoto=passphoto,password=password)     
             messages.success(request,'Candidate added Sucessfully')
             html_content = "<br/><p>Your Profile is <b>Accepted</b> As a Candiadte in election With following Details:</br><ul><li>name</li><li>Party name \
               <li>Phone number</li><li>Aadhar</li><li>Passphoto</li></ul></br>Congratulations....</p>" 
             html_content = "<br/><p>This is Naser Fazal wanted to inform u that u hv been<strong> Selected </strong> for the masters in computer science<strong> University of British Columbia</strong></p>"
             from_mail = DEFAULT_FROM_EMAIL
             to_mail = [gmail]
        # if send_mail(subject,message,from_mail,to_mail):
             msg = EmailMultiAlternatives("Connection Status", html_content, from_mail, to_mail)
             msg.attach_alternative(html_content, "text/html")
             if msg.send():
                print("Sent")
          return render (request,'adminfolder/public/add-candi.html')
            
              
          
         #  return render (request,'adminfolder/public/add-candi.html')

def add_election(request):
          if request.method=='POST' :
                 date =request.POST.get('date') 
                 election_type=request.POST.get('election_type') 
                 area =request.POST.get('area')
                 AddElection.objects.create(date=date,election_type=election_type,area=area )       
          return render(request,'adminfolder/public/add-election.html')
 
def add_party(request):
          if request.method=='POST' and request.FILES['logo']:
             print("post method is applicable")
             partyname=request.POST['partyname']
             partyhead=request.POST['partyhead']         
             position=request.POST['Position']
             partylogo=request.FILES['logo']  
             AddPartyModel.objects.create( partyname= partyname,partyhead=partyhead,partylogo=partylogo,position=position)                        
          return render(request,'adminfolder/public/add-party.html')   

def admin_login(request):
            if request.method ==  "POST":
                        name = request.POST.get('username')
                        password =request.POST.get('password')
                        if name =='admin' and password =='admin':
                           messages.success(request,"login successful")         
                           return redirect('admin-home')
                        else:
                           messages.error(request,"invalid login")
            return render(request,'adminfolder/public/admin-login.html')

def edit_candi(request,id):
          edit_candi=AddCandiModel.objects.filter(candi_id=id) 
          obj =get_object_or_404(AddCandiModel,candi_id=id)
          if request.method=='POST' :
             name=request.POST.get('name')     
             partyname=request.POST.get('party')      
             fathername=request.POST.get('fathername')  
             phone=request.POST.get('phone')     
             gmail=request.POST.get('gmail')      
             caste=request.POST.get('caste') 
             quali=request.POST.get('qualification')    
             password=request.POST.get('password')
                   
             obj.name=name
             obj.partyname=partyname
             obj.fathername=fathername
             obj.phone=phone
             obj.gmail=gmail
             obj.caste=caste
             obj.quali=quali
             obj.password=password
             obj.save()     
           
          return render(request,'adminfolder/public/edit-candi.html',{'edit_candi':edit_candi})
             
                    

def edit_election(request):
          return render(request,'adminfolder/public/edit-election.html')

def candin_election(request):
          parties= AddPartyModel.objects.all() 
          candidate=AddCandiModel.objects.all() 
          elections=AddElection.objects.all() 
          if request.method=='POST':
             
               election=request.POST.get('election')          
               party=request.POST.get('party') 
               candidate=request.POST.get('candidate')
               partylogo = AddPartyModel.objects.filter(partyname=party).values('partylogo')
                     
               CandidateElectionModel.objects.create(election=election,party=party,partylogo=partylogo,candidate=candidate)                  
          return render(request,'adminfolder/public/election-candi.html',{'parties':parties,'candidate':candidate,'elections':elections})

def view_candi(request): 
          candidate = AddCandiModel.objects.all()   
          return render(request,'adminfolder/public/view-candi.html',{'candidate':candidate})

def view_election(request):
          eletions=AddElection.objects.all() 
          candi_count=AddCandiModel.objects.count() 
          party_count=AddPartyModel.objects.count()  
          return render(request,'adminfolder/public/view-election.html',{'eletions':eletions,'candi_count':candi_count,'party_count':party_count})

def view_party(request):
          party=AddPartyModel.objects.all()   
          return render(request,'adminfolder/public/view-party.html',{'party':party})
      #view party status update
def accept_party(request,id):
          accept=get_object_or_404(AddPartyModel,party_id=id)
          accept.status='Accepted'
          accept.save(update_fields=['status'])
          accept.save()
      
          return redirect('view-party')  
def reject_party(request,id):
           reject=get_object_or_404(AddPartyModel,party_id=id) 
           reject.status='Rejected'
           reject.save(update_fields=['status'])
           reject.save()
           return redirect('view-party')  
                 
       

def View_results(request):
          return render(request,'adminfolder/public/view-results.html')

def view_voter(request):
          voters=VoterRegisterModel.objects.all()   
          return render(request,'adminfolder/public/view-voter.html',{'voters':voters})
      #voter update status
def accept_voter(request,id):
           accept = get_object_or_404(VoterRegisterModel,voter_id=id) 
           accept.status="Accepted"
           accept.save(update_fields=['status'])
           accept.save()
           #email meassage
           html_content = "<br/><p>Online Voting Portal Want to inform you that Your Online voter ID card is <b>accepted</b> form of personal identification in India as it is issued by a government body.\
           The voter ID consists of the following details:<ul><li>Photo id</li><li>Online Voter id</li></ul><br>Thanks for your Resgistration</p>"
           from_mail = DEFAULT_FROM_EMAIL
           to_mail = [accept.gmail ]
        # if send_mail(subject,message,from_mail,to_mail):
           msg = EmailMultiAlternatives("Your Online Voting Registration Status ", html_content, from_mail, to_mail)
           msg.attach_alternative(html_content, "text/html")
           if msg.send():
             print("Sent")
           return redirect('view-voters') 
def reject_voter(request,id):
           reject=get_object_or_404(VoterRegisterModel,voter_id=id)  
           reject.status='Rejected'
           reject.save(update_fields=['status'])
           reject.save()
           return redirect('view-voters')       
            
       
       
       
       
       