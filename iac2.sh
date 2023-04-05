#!/bin/bash

echo "Atualizando o Sistema..."

apt-get update
apt-get upgrade -y

echo "Instalando os recursos necessarios..."

apt-get install apache2 unzip wget -y

echo "Instalando a aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim do script..."
