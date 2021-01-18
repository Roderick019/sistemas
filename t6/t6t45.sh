#!/bin/bash

echo "Bienvenido a compras Monfort"

saldo=100
compra=0
puedo=100

while [ $puedo -ge 0 ]; do
  read -p "Tiene usted $saldo € de saldo. Introduzca su compra: " compra
  puedo=$((puedo-compra))
  if [ $puedo -ge 0 ]; then
    saldo=$((saldo-compra))
  fi
done

let gasto=$((100-saldo))
echo "No dispone de tanto saldo."
echo "Resumen de sus compras: se gasta $gasto €; le quedan $saldo €"