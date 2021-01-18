#!/bin/bash

numero=`echo $(($RANDOM%100))`
usuario=0
intentos=0

echo "Introduce un número entre 0 y 100"
read usuario

echo "El número secreto es $numero"

while [ $usuario -ne $numero ]; do
  let multiplo=$usuario%$numero
  let divisor=$numero%$usuario

  if [ $multiplo -eq 0 ]; then
    echo "tu número es múltiplo del número secreto"
  else
    if [ $divisor -eq 0 ]; then
      echo "tu número es divisor del número secreto"
    else
      echo "tu número no es ni múltiplo ni divisor"
    fi
  fi

  intentos=$((intentos+1))
  echo "Introduce un número entre 0 y 100"
  read usuario
done

let puntos=$((100-intentos))
echo "Has acertado el número en $intentos intentos; tienes $puntos puntos"