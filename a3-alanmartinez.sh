#!/bin/bash
#
# a3-alanmartinez.sh
#
clear
sudo echo "--- Benvingut/da al programa de creació d'usuaris ---"
echo "Introdueix un nom d'usuari (escrigui 0 per sortir):"
read user
if [[ $user == 0 ]]; then
  echo "Ha volgut sortir."
  exit 115
fi
if grep -w $user /etc/passwd; then
  echo "L'usuari $user existeix."
else
  echo "L'usuari $user no està registrat al sistema."
  echo "Vol donar-lo d'alta? (s/n)."
  read crear
  if [[ $crear = s ]]; then
    echo "Ha decidit donar-lo d'alta."
    sudo useradd -m $user
    echo "Usuari $user registrat."
  elif [[ $crear = n ]]; then
    echo "Ha decidit no donar-lo d'alta."
    echo "Nom de l'usuari no creat: $user" >> errors.log
  fi
fi
