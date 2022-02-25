#!/bin/bash
#
# Activitat 3 - Usuaris
#
sudo echo "--- Introdueix un nom d'usuari ---"
read user
if grep -w $user /etc/passwd; then
  echo "L'usuari $user existeix."
else
  echo "L'usuari $user no està registrat al sistema."
  echo "Vol donar-lo d'alta? (s/n)."
  read crear
  if [[ $crear = s ]]; then
    echo "Ha decidit donar-lo d'alta."
    sudo adduser --disabled-password $user
    echo "Usuari $user registrat."
  elif [[ $crear = n ]]; then
    echo "Ha decidit no donar-lo d'alta."
  fi
fi
