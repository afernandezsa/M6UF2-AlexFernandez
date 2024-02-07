#!/bin/bash

cont=false  #Semàfor per a parar bucle while

while [ "$cont" == false ]; do  #Mentre sigui cont, farà
	if ping agora.xtec.cat &> /dev/null; then  #Si fa ping, i a més no mostra per pantalla com es fa el ping (/dev/null)
    	echo "Tens connexió cap al insti!"  #Mostra que tinc connexió
    	firefox https://agora.xtec.cat/ies-sabadell/  #Obre al firefox la web
    	cont=true #Paro el bucle
	else
    	echo "No hi ha connexió cap a la web del insti. Espera 5 segons."  #Sinó, mostra que no pot
    	sleep 5  #Cada 5 segons mostrarà echo
	fi
done
