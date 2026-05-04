#! /bin/bash

#Operadores en bash

: '
A continuación, explicaremos algunos de los operadores más comunes en Bash:

 AND (&&)
 OR (||)
 NOT (!)
 ---------------------------------------
 -gt: Significa "greater than" (mayor que). 
 -lt: Significa "less than" (menor que).
 -eq: Significa "equal to" (igual a).
 -ne: Significa "not equal to" (no igual a).

 De igual manera los podemos usar como los conocemos 
 
 > (mayor que). 
 < (menor que).
 == (igual a).
 != (no igual a).
'

#Ejemplos de uso

#Definimos tres variables para usar en las comparaciones
number1=5
number2=70
number3=100

# Ejemplo 1: Comprobamos si el número1 es mayor que 5 Y el número2 es menor que 10

# Forma 1: Usando corchetes dobles [[...]]
if [[ $number1 -gt 5 && $number2 -lt 10 ]] then
    echo -e "Número 1 es mayor que 5 y Número 2 es menor que 10.\n"
else
    echo -e "la condicion no se cumple.\n"
fi

# Forma 2: Usando paréntesis dobles ((...))
if (( $number1 > 5 && $number2 < 10 )) then
        echo -e "Número 1 es mayor que 5 y Número 2 es menor que 10.\n"
else
    echo -e "la condicion no se cumple.\n"
fi

# Ejemplo 2: Comprobamos si el número1 es menor que 5 O el número3 es mayor que 10

# Forma 1: Usando corchetes dobles [[...]] y el operador OR (||)
if [[ $number1 -lt 5 || $number3 -gt 10 ]]; then
    echo -e "\nO el Número 1 es menor que 5 o el Número 2 es mayor que 10."
fi

# Forma 2: Usando paréntesis dobles ((...))
if (( $number1 < 5 || $number3 > 10 )) then
    echo -e "\nO el Número 1 es menor que 5 o el Número 2 es mayor que 10."
fi