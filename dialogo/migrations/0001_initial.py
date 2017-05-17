# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-05-17 04:04
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('parlamentar', '0001_initial'),
        ('base', '0003_usuario'),
    ]

    operations = [
        migrations.CreateModel(
            name='Conversa',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titulo', models.CharField(max_length=2048)),
                ('validade', models.DateField()),
                ('is_finalizado', models.BooleanField(default=False)),
                ('deputado', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='conversas', to='parlamentar.Deputado')),
                ('usuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='conversas', to='base.Usuario')),
            ],
        ),
        migrations.CreateModel(
            name='Mensagem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('conteudo', models.TextField()),
                ('is_resposta', models.BooleanField(default=False)),
                ('datetime', models.DateTimeField()),
                ('conversa', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='mensagens', to='dialogo.Conversa')),
            ],
        ),
        migrations.CreateModel(
            name='Sugestao',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titulo', models.CharField(max_length=1024)),
                ('conteudo', models.TextField()),
                ('data_criacao', models.DateTimeField()),
                ('usuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='sugestoes', to='base.Usuario')),
            ],
        ),
        migrations.CreateModel(
            name='Tomatada',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('data_hora', models.DateTimeField()),
                ('deputado', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='tomatadas', to='parlamentar.Deputado')),
            ],
        ),
    ]