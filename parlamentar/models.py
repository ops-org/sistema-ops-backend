from django.db import models


class Profissao(models.Model):
    nome = models.CharField(max_length=128)


class Partido(models.Model):
    nome = models.CharField(max_length=128)
    sigla = models.CharField(max_length=32)


class Deputado(models.Model):

    DEPUTADO_SEXO_CHOICES = (
        ('m', 'Masculino'),
        ('f', 'Feminino')
    )

    nome = models.CharField(max_length=1024)
    nome_civil = models.CharField(max_length=254, null=True, blank=True)
    email = models.EmailField()
    profissao = models.ForeignKey(Profissao, related_name='deputados')
    sexo = models.CharField(max_length=1, default='m', choices=DEPUTADO_SEXO_CHOICES)

    nascimento = models.DateField(null=True, blank=True)
    falecimento = models.DateField(null=True, blank=True)
