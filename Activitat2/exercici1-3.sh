#!/bin/bash

read -p "Introdueix un número " n

if [ $n -eq 0 ]; then #Si és igual a 0, serà 0 (eq)
	echo "El número es 0."
else #Sinó, no serà 0.
	echo "El número no es 0."
fi
