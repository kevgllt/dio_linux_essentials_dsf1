#!/bin/bash

echo "Criando Usuarios do grupo GRP_ADM ..."

useradd -m -s /bin/bash -p $(openssl passwd -crypt senha123) carlos
useradd -m -s /bin/bash -p $(openssl passwd -crypt senha123) maria
useradd -m -s /bin/bash -p $(openssl passwd -crypt senha123) joao

echo "Criando Usuarios do grupo GRP_VEN ..."

useradd -m -s /bin/bash -p $(openssl passwd -crypt senha123) debora
useradd -m -s /bin/bash -p $(openssl passwd -crypt senha123) sebastiana
useradd -m -s /bin/bash -p $(openssl passwd -crypt senha123) roberto

echo "Criando Usuarios do grupo GRP_SEC ..."

useradd -m -s /bin/bash -p $(openssl passwd -crypt senha123) josefina
useradd -m -s /bin/bash -p $(openssl passwd -crypt senha123) amanda
useradd -m -s /bin/bash -p $(openssl passwd -crypt senha123) rogerio

echo "Criando diretorios ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Atribuindo usuarios aos grupos ..."

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Atribuindo pastas aos grupos"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Definindo permissões de arquivos..."

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /publico/

echo "Concluido!!!"
