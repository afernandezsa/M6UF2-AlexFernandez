#!/bin/bash

if [ "$#" -ne 1 ]; then #Només demana 1 paràmetre, sinó avisa
    	echo "Has d'indicar un arxiu com a paràmetre!"
    	exit 1
fi

protocol="UDP" #Indico el protocol que vull
conn=$(grep -o "\<$protocol\>" "$1" | wc -l) #Compta amb wc -l, on hi hagi el nom "UDP" amb -o. "\<\>: Mostra només la paraula desitjada, lletra per lletra, no més gran o més espai.
echo "Connexions establertes: $conn" #Mostra, en aquest cas guardo arxiu de wireshark com a csv i puc fer una consulta DNS per mostrar paquets UDP
