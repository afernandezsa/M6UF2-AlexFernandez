#!/bin/bash

if [ "$#" -ne 1 ]; then
    	echo "Has d'indicar una ruta d'arxiu!"  #Si el paràmetre no és 1, error i surt amb exit
    	exit 1
fi

if [ -e "$1" ]; then #Si el paràmetre és 1, diu que existeix
    	echo "La ruta existeix"
    	echo "Permissos de l'arxiu:"
    	ls -l "$1" | cut -d ' ' -f 1 # Mostra amb "ls -l" permissos del paràmetres passat i només mostra fins al primer arguemnt passat ($1)

else #Sinó diu que no existeix
    	echo "No existeix."
fi

