from email import message
from django.db import models

# Create your models here.
class contactModel(models.Model):
          name = models.CharField(max_length=100)
          email =models.EmailField()
          subject =models.CharField(max_length=100)
          message = models.TextField()
          class Meta:
                    db_table="contact_details"



