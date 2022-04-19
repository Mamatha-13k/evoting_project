"""evoting URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from unicodedata import name
from django.contrib import admin
from django.urls import path,include
from adminapp import views as admin_views
from candiapp import views as candi_views
from mainapp  import views as main_views
from voterapp import views as voter_views


from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('admins/', admin.site.urls),
    # main paths
    path('',main_views.home,name='home'),
    path('about',main_views.about,name='about'),
    path('election',main_views.election,name='election'),
    path('contact',main_views.contact,name='contact'),
    # admin paths
    path('admin-home',admin_views.admin_home, name='admin-home'),
    path('add-candidate',admin_views.add_candi, name='add-candi'),
    path('add-election',admin_views.add_election,name='add-election'),
    path('add-party',admin_views.add_party,name='add-party'),
    path('admin-login',admin_views.admin_login,name='admin-login'),
    path('edit-candi/<int:id>/',admin_views.edit_candi,name='edit-candi'),
    path('edit-election',admin_views.edit_election,name='edit-election'),
    path('candidate-in-election',admin_views.candin_election,name='candin-election'),
    path('view-candidate',admin_views.view_candi,name='view-candi'),
    path('view-election',admin_views.view_election,name='view-election'),
    path('view-party',admin_views.view_party,name='view-party'),
    path('view-results',admin_views.View_results,name='view-results'),
    path('view-voters',admin_views.view_voter,name='view-voters'),
    # party update urls
    path('accept_party/<int:id>/',admin_views.accept_party,name='accept_party'),
    path('reject_party/<int:id>/',admin_views.reject_party,name='reject_party'),
    # voter update urls
    path('accept_voter/<int:id>/',admin_views.accept_voter,name='accept_voter'),
    path('reject_voter/<int:id>/',admin_views.reject_voter,name='reject_voter'),
    #candi paths
    path('candi-login',candi_views.candi_login,name='candi-login'),
    path('candi-password/<int:id>/',candi_views.candi_password,name='candi-password'),
    path('candi-profile',candi_views.candi_profile,name='candi-profile'),
    path('candi-results',candi_views.candi_results,name='candi-results'),
    # voter paths
    path('voter-login',voter_views.voter_login,name='voter-login'),
    path('voter-profile ',voter_views.voter_profile,name='voter-profile'),
    path('voter-registration',voter_views.voter_reg,name='voter-reg'),
    path('voter-results',voter_views.voter_results,name='voter-results'),
    path('voter-vote',voter_views.voter_votes,name='voter-votes'),
    path('voter_voting/<int:id>/',voter_views.voter_vote,name='voter_voting'),
]


urlpatterns+= static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)