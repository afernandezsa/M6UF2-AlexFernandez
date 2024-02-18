#!/bin/bash

if [ $# -eq 0 ]; then  #Si no hi ha cap argument avisa i surt
	echo "No s'ha passat cap nom d'usuari com a paràmetre."
	exit 1
fi

usuari=$1  #Paràmetre el guardo en una variable
 
echo "1. Comprovar si $usuari té drets d'administrador"  #Echo amb opcions per a saber quin número prèmer
echo "2. Comprovar si $usuari existeix"
echo "3. Comprovar si la ruta del directori personal de $usuari és vàlida"

read opcio #Llegeix el número escrit

case $opcio in  #Per cada variable opcio que llegeix
	1)
    	if sudo -l -U $usuari &> /dev/null; then   #Si és 1, mostra amb -l -U si té drets, sinó avisa
        	echo "$usuari té drets d'administrador."
    	else
        	echo "$usuari no té drets d'administrador."
    	fi
    	;;
	2)
    	getent passwd $usuari &> /dev/null  #Si prem 2, mira si tot l'escrit és igual a 0 a getent passwd existeix usuari, sinó avisa
    	if [ $? -eq 0 ]; then
        	echo "$usuari existeix."
    	else
        	echo "$usuari no existeix."
    	fi
    	;;
	3)
    	if [ -d "/home/$usuari" ]; then  #Si el directori del paràmetre (-d) té un /home, avisa sinó indica que no té directori personal.
        	echo "El directori personal de $usuari és vàlid."
    	else
        	echo "La ruta del directori personal de $usuari no existeix"
    	fi
    	;;
	*)
    	echo "Opció no vàlida. Tria una vàlida nano"  #COm un "else" dels casos, avisa quan l'opció no existeix
    	;;
esac #Finalitza el case
