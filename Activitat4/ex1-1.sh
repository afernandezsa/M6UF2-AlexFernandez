#!/bin/bash

while :   #Mentre sigui True, farà:
do
        echo "1. Obrir un enllaç"       #Menú d'opcions:
	echo "2. Si no estàs segur, prem aquí i surt"

	read opcio   #Guarda l'opció

	case $opcio in  #Casos, per a cada cas fa el demanat llegint la variable opció:
    	1)
        	echo "S'obrirà el següent enllaç: "   #Mostra que s'obrirà el següent enllaç amb firefox.
        	firefox https://www.youtube.com/watch?v=jaLDoWqIq2M
        	;;
    	2)
        	echo "Has sortit del programa!"  #Sinó, si escollim la segona, sortirà del programa amb exit.
        	exit 0
        	;;
    	*)
        	echo "Ha de ser una opció vàlida"   #Si no s'escull cap cas, avisa i torna a demanar.
        	;;
	esac
done

