from django.db import models


class TipoDespesa(models.Model):
    nome = models.CharField(max_length=256)


class PessoaJuridica(models.Model):
    cnpj = models.CharField(max_length=18)
    razao_social = models.CharField(max_length=512)


class PessoaFisica(models.Model):
    cpf = models.CharField(max_length=14)
    nome = models.CharField(max_length=512)


class Situacao(models.Model):
    nome = models.CharField(max_length=1024)


class NaturezaJuridica(models.Model):
    codigo = models.CharField(max_length=10)
    descricao = models.CharField(max_length=2048)


class InfoEmpresa(models.Model):
    data_obtencao = models.DateField()
    nome_empresa = models.CharField(max_length=512)
    data_abertura = models.DateField()

    logradouro = models.CharField(max_length=1024)
    numero = models.CharField(max_length=16)
    complemento = models.CharField(max_length=64)
    cep = models.CharField(max_length=20)
    bairro = models.CharField(max_length=128)

    municipio = models.ForeignKey('base.Municipio', related_name='informacoes')

    email = models.EmailField(null=True, blank=True)
    telefone = models.CharField(max_length=64)
    efr = models.CharField(max_length=2048, verbose_name='Ente Federativo Responsável')

    situacao_cadastral = models.ForeignKey(Situacao, related_name='informacoes')
    data_situacao_cadastral = models.DateField()
    situacao_especial = models.CharField(max_length=2048, null=True, blank=True)

    capital_social = models.DecimalField(decimal_places=2, max_digits=20)

    ip_colaborador = models.CharField(max_length=15)


class Reserva(models.Model):
    cnpj = models.CharField(max_length=15)
    ip_colaborador = models.CharField(max_length=15)


class SocioQualificacao(models.Model):
    codigo = models.CharField(max_length=4)
    descricao = models.CharField(max_length=2048)


class Socio(models.Model):
    pessoa = models.ForeignKey(PessoaFisica, related_name='sociedade')
    empresa = models.ForeignKey(InfoEmpresa, related_name='sociedade')
    qualificacao = models.ForeignKey(SocioQualificacao, related_name='sociedade')


class Representante(models.Model):
    socio = models.ForeignKey(Socio, related_name='representantes')
    pessoa = models.ForeignKey(PessoaFisica, related_name='representantes')
    qualificacao = models.ForeignKey(SocioQualificacao, related_name='representantes')


class GastoTipo(models.Model):
    descricao = models.CharField(max_length=2048)
    media_despesa = models.DecimalField(max_digits=20, decimal_places=2)
    media_mensal = models.DecimalField(max_digits=20, decimal_places=2)


class Gasto(models.Model):
    mandato = models.ForeignKey('trabalho.Mandato', related_name='gastos')
    tipo_despesa = models.ForeignKey(GastoTipo)
    data = models.DateField()
    valor = models.DecimalField(max_digits=20, decimal_places=2)
