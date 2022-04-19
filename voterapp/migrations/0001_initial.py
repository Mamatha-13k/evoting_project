# Generated by Django 4.0.1 on 2022-03-03 11:31

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='VoterRegisterModel',
            fields=[
                ('voter_id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.TextField(help_text='Enter your name', max_length=100)),
                ('phone', models.BigIntegerField(help_text='Enter phone number')),
                ('gender', models.TextField(help_text='select your gender', max_length=100)),
                ('Aadhar', models.ImageField(help_text='upload image here', null=True, upload_to='images/')),
                ('voterid', models.CharField(help_text='upload id here', max_length=100)),
                ('age', models.IntegerField(help_text='Enter your age')),
                ('gmail', models.CharField(help_text='Enter gmail here', max_length=100)),
                ('passphoto', models.ImageField(help_text='Upload images', null=True, upload_to='images/')),
                ('password', models.CharField(default='password', help_text='Enter Password', max_length=100)),
            ],
            options={
                'db_table': 'voter-reg',
            },
        ),
    ]