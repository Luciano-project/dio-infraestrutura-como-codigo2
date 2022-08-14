#!/bin/bash

echo "Atualizando o servidor"
apt-get update && apt-get upgrade -y

echo "Instalando o apache2"
apt-get install apache2 -y

echo "Instalando o unzip"
apt-get install unzip -y

echo "Selecionando o diretório e baixando as páginas web para substituir o padrão do apache2"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Abrindo na pasta do arquivo baixado e descompactando o arquivo unzip"
unzip main.zip
cd linux-site-dio-main

echo "Copiando os arquivos para o diretório padrão de páginas do apache"
cp -R * /var/www/html/

