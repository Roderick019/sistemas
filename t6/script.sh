#!/bin/bash

maxlineas='cat listado.txt | wc-l`
numlinea=1
windows=0
linux=0
windowsproc=0
linuxproc=0

while[ $numlinea -le $maxlineas ]; do
 linea=`cat listado.txt | head -$numlinea | tail-1`
user=`echo $linea | awk ' {print$1}'`
os=`echo $linea | awk ' {print$2}'`
proc==`echo $linea | awk ' {print$3}'`


if [ $os = "windows" ];then
 windows=$((windows+1))
 widowsproc=$((windowsproc+proc))
fi

if [ $os ="Linux" ];then
 linux=$((linux+1))
 linuxproc=$linuxproc+proc))
fi
 numlinea=$((numlinea+1))
done
echo "windows -> $windows $windowsproc"
echo "linux -> $windows $linuxproc"