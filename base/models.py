from django.db import models


class Estado(models.Model):
    nome = models.CharField(max_length=256)
    sigla = models.CharField(max_length=2)


class Municipio(models.Model):
    nome = models.CharField(max_length=256)
    estado = models.ForeignKey(Estado, related_name='municipios')


class Usuario(models.Model):
    nome = models.CharField(max_length=256)
    email = models.EmailField(null=True, blank=True)
    credencial = models.ForeignKey('auth.User', blank=True, null=True)

    facebook_id = models.CharField(max_length=512, blank=True, null=True)

    contador_tomatadas = models.PositiveIntegerField(default=0)