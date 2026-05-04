#! /bin/bash

: '
Para usar una condicional en un programa de 
Bash Script la sintaxis sera la siguiente

if [ condición ]
the
    comandos a ejecutar
fi

'

# Solicitamos la edad del usuario
echo "¿Cuántos años tienes?"
read edad 

#Las condicionales en bash se pueden hacer de la manera siguiente

# Ejemplo 1: Comparación numérica usando -eq

if [ $edad -eq 10 ] #-eq es como un parametro o un argumento que viene siendo lo mismo que (==) osea equals
then
    echo "la edada ingresada es muy baja"
fi

# Ejemplo 2: Comparación numérica usando ==
if [ $edad == 10 ]
then
    echo "La edad es exactamente 10"
fi

# Ejemplo 3: Condicional para una operación con saldo
echo
# Definimos el saldo disponible
saldo=1000

# Solicitamos la cantidad de dinero que desea retirar
echo "¿Cuánto dinero desea sacar?"
read dinero

# Condicionales para verificar si se puede realizar la transacción
if [ $dinero == 0 ]; then
    echo "Error: La cantidad a retirar debe ser mayor que 0."
elif (( $dinero >= $saldo )); then
    echo "No tienes suficiente saldo para retirar"
else
    saldo=$((saldo - dinero))
    echo "Has retirado $dinero Tu saldo restante es: $saldo"
fi