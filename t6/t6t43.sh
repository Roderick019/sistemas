#!/bin/bash

acum=1
i=1

echo "Introduce un número"
read numero

echo "El factorial del número $numero es:"

#De más a menos
while [ $numero -gt 1 ]; do
  acum=$((acum*numero))
  numero=$((numero-1))
done

#Alternativa
#De menos a más
#while [ $i -le $numero ]; do
#  acum=$((acum*i))
#  i=$((i+1))
#done

echo $acum