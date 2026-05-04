#! /bin/bash

#Formas de mostrar texto desde bash

# Forma 1: Usando el comando 'echo' para imprimir texto
echo " Hola"

#la opción '-e' de 'echo' habilita caracteres de escape por lo cual se usa para salto de línea
echo -e "\nHola desde una nueva línea \n"
echo ":)"

echo

# Forma 2: Usando 'cat' con un delimitador para mostrar texto multi-línea
cat << myText
Hola mundo desde Fedora 
usando bash script
myText # 'myText' es el delimitador que marca el inicio y fin del bloque de texto
