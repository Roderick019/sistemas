#!/bin/bash

i=5

while [ $i -le 105 ]; do
  let resto=$i%5

  if [ $resto -eq 0 ]; then
    echo $i
  fi
  i=$((i+1))
done