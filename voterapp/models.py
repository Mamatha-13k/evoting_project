from distutils.command.upload import upload
from unicodedata import name
from django.db import models

# Create your models here.
class VoterRegisterModel(models.Model):
          voter_id=models.AutoField(primary_key=True)
          name=models.TextField(max_length=100,help_text='Enter your name')
          phone=models.BigIntegerField(help_text='Enter phone number')
          gender=models.TextField(max_length=100,help_text='select your gender')
          Aadhar=models.ImageField(upload_to='images/',help_text='upload image here',null=True)
          voterid=models.CharField(max_length=100,help_text='upload id here')
          age=models.IntegerField(help_text='Enter your age')
          gmail=models.CharField(max_length=100,help_text='Enter gmail here')
          passphoto=models.ImageField(upload_to='images/',help_text='Upload images',null=True)
          password=models.CharField(max_length=100,help_text='Enter Password',default='password')
          voter_type=models.CharField(max_length=100,default='voter-type',null=True)
          status=models.CharField(max_length=100,default='pending',null=True)
          
          class Meta:
                db_table = 'voter_details'
          def __str__(self):
             return self.name 
       

class VoteModel(models.Model):
      voter_id=models.IntegerField()
      election=models.CharField(max_length=50)
      partyname=models.CharField(max_length=100)
      candidate=models.CharField(max_length=100)
      status=models.BooleanField(default=False)
      
      class Meta:
            db_table='voting_details'