#!/bin/bash

# Autor: José Nelson Cendrette
# Projeto_3: Servidor Web Automatizado
# Infraestrutura: EC2 AWS
# Pré_Requisito: Garantir que a página seja acessível via HTTP logo após a instância ser iniciada.

# Atualizando os pacotes do SO Amazon Linux
yum update -y

# Instalando o Servidor Web Nginx
yum install nginx -y

# Criando uma página HTML simples e enviando para o diretório padrão nginx
