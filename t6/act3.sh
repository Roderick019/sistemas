#!/bin/bash
maxlineas='cat precipitaciones.txt | wc -l'
cont=0

while [ $cont -le $maxlineas ];do
 dia='cat precipitaciones.txt |1 head -$cont | tail -1 |awk '{print $1}'`
 litros='cat precipitaciones.txt |1 head -$cont | tail -1 |awk '{print $2}'`

 if [ $litros -eq 0 ]; then
 echo"El dia $dia (`./diasem.sh $dia`) no llovio"
fi

cont=$((cont+1))
done