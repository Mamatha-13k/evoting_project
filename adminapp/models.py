from asyncio.windows_events import NULL
from email import message
from email.policy import default
from pyexpat.errors import messages
from turtle import position
from unicodedata import name
from django.db import models
from urllib import request
import re


# Create your models here.
class AddCandiModel(models.Model):
  candi_id=models.AutoField(primary_key=True)
  name=models.TextField(max_length=200,help_text='Enter Your Name') 
  partyname=models.CharField(max_length=200,help_text='Enter Party Name')
  fathername=models.TextField(max_length=200,help_text='Enter Father Name')
  phone=models.BigIntegerField(help_text='Enter Phone Number')
  gmail=models.EmailField(help_text='Enter Gmail Here')
  caste=models.CharField(max_length=100,help_text='Enter Caste Here')
  quali=models.CharField(max_length=200,help_text='Enter Educational Qualification',null=True)
  aadhar=models.ImageField(upload_to='images/',help_text='Upload Aadhar Image')
  castecertificate=models.ImageField(upload_to='images/',help_text='Upload caste Image')
  passphoto=models.ImageField(upload_to='images/',help_text='Upload  passphoto Image')
  password=models.CharField(help_text='Enter Password',max_length=200)
  class Meta:
                    db_table='candidate_details'
  def __str__(self):
          return  self.name
#   form validation
        
class AddPartyModel(models.Model):
  party_id=models.AutoField(primary_key=True)
  partyname=models.CharField(max_length=200,help_text='Enter Party Name')
  partyhead=models.TextField(max_length=200,help_text='Enter party Head Name')
  position=models.CharField(max_length=200,help_text='Enter Position party',default='position')
  partylogo=models.ImageField(upload_to='images/',help_text='Upload Party Logo Here',default='partylogo')  
  status=models.CharField(default='pending',max_length=100)   
  
  class Meta:
       db_table='party_details'   
  def __str__(self):
       return self.partyname 

class CandidateElectionModel(models.Model):
        candidate_id=models.AutoField(primary_key=True)
        election=models.CharField(max_length=200,help_text='Enter Election') 
        party=models.CharField(max_length=200,help_text='Enter party Here')
        partylogo = models.CharField(null=True,blank=True,max_length=200,default='partylogo')
        candidate=models.CharField(max_length=200,help_text='Enter Candidate') 
        class Meta:
                db_table= 'candidate_in_election' 
        def __str__(self):
                return self.party 
        
        
class AddElection(models.Model):
        election_id=models.AutoField(primary_key=True)          
        date = models.CharField(help_text='Enter Date and Time',max_length=200,default='date')  
        election_type=models.TextField(help_text='Enter Election Type',max_length=200,default='election type')
        area=models.CharField(max_length=200,help_text='Enter area')

        class Meta:
               db_table='election_details'
        def __str__(self):
                return self.election_type  


         
                                         
                    
       
        