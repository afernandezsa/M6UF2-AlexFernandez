#!/bin/bash

if [ "$#" -ne 1 ]; then  #Si el paràmetre no és 1, avisa
    	echo "Has d'indicar una ruta d'arxiu!"
    	exit 1
fi

if [ ! -e "$1" ]; then #SI el paràmetre no és una ruta del sistema avisa (-e)
    	echo "El directori/arxiu no existeix"
    	exit 1
fi

if [ -d "$1" ]; then #Si el paràmetre és directori (-d)
    	echo "És un directori"
else #Sino serà arxiu
    	echo "És un arxiu"

nom=$(basename "$1")  #Funció que agafa el nom d'un arxiu/directori del sistema, que en aquest cas serà el paràmetre
ext="${nom##*.}" #Creo variable ext on agafo variable nom, que és el nom del arxiu i agrega ("##*." Agafa part més llarga des de nom fins a un punt i l'elimina, per tal de saber només l'extensió

echo "L'extensió de l'arxiu és: $ext"

fi
