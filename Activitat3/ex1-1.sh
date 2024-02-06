#!/bin/bash

sed -i '/^#/d' Act3_parole.txt #Elimina liníes del arxiu les quals continguin #

for i in "$1"; do #Per a cada volta del primer argument que es la frase, si existeix en tot l'arxiu, avisa
	if grep -q "$i" Act3_parole.txt; then
    	echo "La paraula/frase $i existeix a l'arxiu."
	else #Sinó també avisa
    	echo "La paraula/frase $i no existeix a l'arxiu."
	fi
done #Acaba bucle ja que no necessitem el següent pas a dins d'aquest
f=$2 #El segon parámetre una paraula
echo "$2" >> Act3_parole.txt #Agrego amb " >> al arxiu 
cat Act3_parole.txt | grep $2 #Això ho he fet per a mostrar a l'arxiu que definitivament s'agregui

