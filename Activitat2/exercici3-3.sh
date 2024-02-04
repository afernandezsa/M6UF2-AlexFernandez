#!/bin/bash

if [ "$#" -ne 2 ]; then #Si no son 2 paràmetres els passats avusa i surt
    	echo "Has d'indicar una ruta i un nom d'arxiu!"
    	exit 1
fi

if [ ! -d "$1" ]; then #Si el primer, que es el directori no existeix, avisa (-d) i surt
    	echo "El directori no existeix"
    	exit 1
fi

tar -czvf "$2.tar.gz" "$1" #Crea arxiu comprimit amb el segon paràmetre que és el nom que rebrà amb el directori passat
echo "El directori $1 s'ha comprés en el arxiu $2.tar.gz" #Mostra que s'ha fet
