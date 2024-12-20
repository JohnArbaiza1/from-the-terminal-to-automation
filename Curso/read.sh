#! /bin/bash

#Pidiendo datos al usuario 

#Forma 1: Solicitar datos al usuario y almacenar la entrada en una variable
echo "Ingrese su edad: "
# Lee la entrada del usuario y la guarda en la variable 'edad'
read edad
echo "La edad ingresada es $edad"  # Muestra el valor almacenado en la variable 'edad'

#Forma 2: Solicitar el nombre de usuario de una manera más compacta
echo
# Muestra el mensaje y lee la entrada del usuario
read -p "Agregue su nombre  usuario: " usuario
echo -e "Usuario $usuario creado\n"  # Muestra un mensaje confirmando que el usuario fue creado