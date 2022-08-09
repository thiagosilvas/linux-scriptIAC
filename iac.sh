#!/bin/bash
echo "criando diretorios.."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos..."
groupadd GRP_VEN
groupadd GRP_ADM
groupadd GRP_SEC

echo "criando usuários"
useradd carlos -c "Carlos" -m -s "/bin/bash" -p $(openssl passwd -1 Senha123)
passwd carlos -e

useradd maria -c "Maria" -m -s "/bin/bash" -p $(openssl passwd -1 Senha123)
passwd maria -e

useradd joao -c "João" -m -s"/bin/bash" -p $(openssl passwd -1 Senha123)
passwd joao -e 

useradd debora -c "Debora" -m -s "/bin/bash" -p $(openssl passwd -1 Senha123)
passwd debora -e

useradd sebastiana -c "Sebastiana" -m -s "/bin/bash" -p $(openssl passwd -1 Senha123)
passwd sebastiana -e 

useradd roberto -c "Roberto" -m -s "/bin/bash" -p $(openssl passwd -1 Senha123)
passwd roberto -e

useradd josefina -c "Josefina" -m -s "/bin/bash" -p $(openssl passwd -1 Senha123)
passwd josefina -e

useradd amanda -c "Amannda" -m -s "/bin/bash" -p $(openssl passwd -1 Senha123)
passwd amanda -e

useradd rogerio -c "Rogerio" -m -s "/bin/bash" -p $(openssl passwd -1 Senha123)
passwd rogerio -e

echo "Adcionando usuarios nos grupos..."
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Atribuindo permissão nas pastas"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm 
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico




