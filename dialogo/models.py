from django.db import models


class Conversa(models.Model):
    deputado = models.ForeignKey('parlamentar.Deputado', related_name='conversas')
    usuario = models.ForeignKey('base.Usuario', related_name='conversas')
    titulo = models.CharField(max_length=2048)
    validade = models.DateField()
    is_finalizado = models.BooleanField(default=False)


class Mensagem(models.Model):
    conversa = models.ForeignKey(Conversa, related_name='mensagens')
    conteudo = models.TextField()
    is_resposta = models.BooleanField(default=False)
    datetime = models.DateTimeField()


class Sugestao(models.Model):
    usuario = models.ForeignKey('base.Usuario', related_name='sugestoes')
    titulo = models.CharField(max_length=1024)
    conteudo = models.TextField()
    data_criacao = models.DateTimeField()


class Tomatada(models.Model):
    deputado = models.ForeignKey('parlamentar.Deputado', related_name='tomatadas')
    data_hora = models.DateTimeField()
