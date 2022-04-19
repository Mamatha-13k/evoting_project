from django.contrib import admin
from adminapp.models import *
# Register your models here.
admin.site.register( AddCandiModel)
admin.site.register(AddPartyModel)
admin.site.register(AddElection)
admin.site.register(CandidateElectionModel)

