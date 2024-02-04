#!/bin/bash

if [ "$#" -ne 1 ]; then # "#" llegeix paràmetre, si no és igual a 1 paràmetre (not equal) surt amb "exit"
	echo "Has d'indicar una ruta d'arxiu!"
	exit 1
fi

if [ -e "$1" ]; then #"-e" verifica que hi ha un ruta, i $1 agafa el paràmetre escrit, si existeix avisa
	echo "La ruta existeix"
else #Sinó avisa
	echo "No existeix."
fi
