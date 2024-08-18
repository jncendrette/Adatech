#!/bin/bash

# Autor: José Nelson Cendrette
# Projeto_3: Servidor Web Automatizado
# Data: 17/08/2024

# Fazendo a instalação dos pacotes necessários
# Atualizando os pacotes do SO Amazon Linux
yum update -y

# Instalando o Servidor Web Nginx
yum install nginx -y

# Habilitando e inicializando o serviço do Nginx
systemctl start nginx.service 
systemctl enable nginx.service 

# Instalando o sistema de versionamento Git
yum install git -y

# Clonando o projeto do repositório GitHub
git clone https://github.com/jncendrette/Adatech.git

# Criando o arquivo de log.txt
LOG_FILE=~/Adatech/log.txt

# Inicializando arquivo de log
echo "Log de backup iniciado em - $(date)" > $LOG_FILE

# Removendo arquivos do diretório padrão do Servidor Web Nginx
rm -rf /usr/share/nginx/html/
echo "Arquivos removidos com sucesso! - $(date)" > $LOG_FILE

# Copiando os arquivos do projeto para o diretório do Nginx
cp -rf Adatech/ /usr/share/nginx/html/
echo "Arquivos copiados com sucesso! - $(date)" > $LOG_FILE
echo "Configuração concluída com sucesso - $(date)" > $LOG_FILE

# Fim do script

