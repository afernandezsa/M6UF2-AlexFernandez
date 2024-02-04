#!/bin/bash
read -p "Introdueix un número: " n

if [ $n -lt 0 ]; then
	echo "El número es negatiu." #Si és less than 0, serà negatiu
else
	echo "El número no es negatiu." #Sinó, no és un número positiu
fi
