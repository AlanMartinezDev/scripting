#!/bin/bash
#
# Activitat 3 - Usuaris
#
echo "--- Introdueix un nom d'usuari ---"
read user
if grep $user /etc/passwd; then
  echo "L'usuari $user existeix"
else
  echo "L'usuari $user no existeix"
fi
