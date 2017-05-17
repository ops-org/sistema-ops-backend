from django.db import models


class Noticia(models.Model):
    titulo = models.CharField(max_length=512)
    data = models.DateField()
    excerto = models.TextField()
    link = models.URLField()