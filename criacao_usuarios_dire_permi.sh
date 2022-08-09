#!/bin/bash

echo "criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários..."

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd Senha123)
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd Senha123)
useradd joao -m -c "Joao" -s /bin/bash -p $(openssl passwd Senha123)

useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd Senha123)
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd Senha123)
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd Senha123)

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd Senha123)
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd Senha123)
useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd Senha123)

echo "atribuindo usuários aos grupos..."

usermod -g GRP_ADM carlos
usermod -g GRP_ADM maria
usermod -g GRP_ADM joao

usermod -g GRP_VEN debora
usermod -g GRP_VEN sebastiana
usermod -g GRP_VEN roberto

usermod -g GRP_SEC josefina
usermod -g GRP_SEC amanda
usermod -g GRP_SEC rogerio

echo "atribuindo grupos aos diretórios respectivos..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "configurando permissões..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM!!"
