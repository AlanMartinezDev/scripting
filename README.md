# Scripting
## Creación y gestión de usuarios
![Shell Script](https://img.shields.io/badge/Lenguaje-Shell%20Script-success)<br>
Programa completo [aquí](https://github.com/alma031/scripting/blob/main/a3-alanmartinez.sh)<br>
Diferentes apartados del programa:
- Comprovar si un usuario existe.
```shell
echo "Si el usuario introducido existe, tiene que mostrar el nombre de usuario y demás:"
read user
if grep -w $user /etc/passwd; then
  echo "L'usuari $user existeix."
fi
```
- En caso contrario, decirle al usuario que no existe y si quiere darlo de alta. (El usuario se crea sin contraseña)
```shell
else
  echo "L'usuari $user no està registrat al sistema."
  echo "Vol donar-lo d'alta? (s/n)."
  read crear
  if [[ $crear = s ]]; then
    echo "Ha decidit donar-lo d'alta."
    sudo useradd -m $user
    echo "Usuari $user registrat."
```
- Si el usuario dice que no, enviar el error a un archivo .log
```shell
  elif [[ $crear = n ]]; then
    echo "Ha decidit no donar-lo d'alta."
    echo "Nom de l'usuari no creat: $user" >> errors.log
  fi
```
