from django.db import models


class Legislatura(models.Model):
    ano = models.PositiveIntegerField()


class Partido(models.Model):
    nome = models.CharField(max_length=128)


class Mandato(models.Model):
    deputado = models.ForeignKey('parlamentar.Deputado', related_name='mandatos')
    legislatura = models.ForeignKey(Legislatura, related_name='mandatos')
    partido = models.ForeignKey(Partido)
    estado = models.ForeignKey('base.Estado', related_name='mandatos')


class Sessao(models.Model):
    dia = models.DateField()
    numero = models.PositiveIntegerField()
    descricao = models.TextField()


class Presenca(models.Model):
    deputado = models.ForeignKey('parlamentar.Deputado', related_name='presencas')
    sessao = models.ForeignKey(Sessao, related_name='presencas')
    is_presente = models.BooleanField(default=False)
    justificativa = models.TextField(null=True, blank=True)