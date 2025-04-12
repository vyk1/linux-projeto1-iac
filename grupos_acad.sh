#!/bin/bash

# Script de provisionamento de infraestrutura de usuários e diretórios
# Autor: vyk1
# Descrição: Cria grupos, usuários famosos por área, diretórios e define permissões

echo "Iniciando configuração de usuários e diretórios..."

# Criando grupos
groupadd GRP_ADM
groupadd GRP_PESQ
groupadd GRP_COM

# Criando usuários do grupo ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd ruth -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

# Criando usuários do grupo PESQUISA
useradd darcyleite -m -s /bin/bash -p $(openssl passwd -crypt Senha456) -G GRP_PESQ
useradd elza -m -s /bin/bash -p $(openssl passwd -crypt Senha456) -G GRP_PESQ

# Criando usuários do grupo COMUNIDADE
useradd abdias -m -s /bin/bash -p $(openssl passwd -crypt Senha789) -G GRP_COM
useradd lia -m -s /bin/bash -p $(openssl passwd -crypt Senha789) -G GRP_COM

# Criando diretórios
mkdir -p /dados/adm
mkdir -p /dados/pesquisa
mkdir -p /dados/comunidade

# Ajustando permissões dos diretórios
chown root:GRP_ADM /dados/adm
chmod 770 /dados/adm

chown root:GRP_PESQ /dados/pesquisa
chmod 770 /dados/pesquisa

chown root:GRP_COM /dados/comunidade
chmod 770 /dados/comunidade

# Log de execução
echo "Setup concluído em $(date)" >> /var/log/setup_infra.log

echo "Infraestrutura criada com sucesso!"
