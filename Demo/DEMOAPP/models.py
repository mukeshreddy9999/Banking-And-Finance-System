from django.db import models


class Post(models.Model):
    username = models.CharField(max_length=100, unique=True)
    passw =models.CharField(max_length=100)

    class Meta:
        db_table="login2"
