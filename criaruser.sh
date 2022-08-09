#!/bin/bash
echo "Criando usuários do sistema"

useradd guest14 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest14 -e

useradd guest15 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest15 -e

useradd guest16 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest16 -e

useradd guest17 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest17 -e

echo "Finalizado!!"
