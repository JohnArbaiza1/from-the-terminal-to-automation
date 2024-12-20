#! /bin/bash

echo -e "escoge un valor entre 1 y 4: \n"
read valor

# Comienzo de la estructura de control 'case' para tomar decisiones basadas en el valor ingresado
case $valor in 
    1)
        echo -e "Escogiste el numero 1"
        ;;
    2)
        echo -e "Escogiste el numero 2"
        ;;
    3)  
        echo -e "Escogiste el numero 3"
        ;;
    4) 
        echo -e "Escogiste el numero 4"
        ;;
    # Si el valor ingresado no es ninguno de los anteriores ejecuta este bloque
    *)
        echo -e "Valor incorrecto"
        ;;
# Fin de la estructura 'case'
esac