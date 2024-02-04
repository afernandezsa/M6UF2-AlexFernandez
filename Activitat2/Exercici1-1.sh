#!/bin/bash

read -p "Introdueix un número: " n #Llegeix el número en la mateixa línea

if [ $n -gt 0 ]; then #gt = Greater than, per això, si el número és major a 0, serà positiu
	echo "El número es positiu."
elif [ $n -lt 0 ]; then #Si és less than, serà negatiu
	echo "El número es negatiu."
else #Sinó serà 0
	echo "El número es 0." 
fi #Finalitza ordres condicionals
