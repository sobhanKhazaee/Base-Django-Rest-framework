from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

# accounts/models.py

class User(AbstractUser):
    # می‌تونید فیلدهای دلخواهی که می‌خواید به مدل User اضافه کنید رو در اینجا بنویسید
    phone_number = models.CharField(max_length=15, blank=True, null=True)
    address = models.TextField(blank=True, null=True)
    
    def __str__(self):
        return self.username
