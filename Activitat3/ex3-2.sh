#!/bin/bash

until [ -d "$1" ]  #Fins que no sigui directori avisa i surt
do
 	echo "Has d'introduïr un directori com a paràmetre!"
 	exit
done
#Fora del until, fem el que es verdader, ja que until només avisa si es fals.
p=$(ls -ld "$1" | cut -d' ' -f1)  #Variable que mostra permissos del argument directori passat
echo "Permissos del directori $1: $p"

num_arxius=$(find "$1" -maxdepth 1 -type f | wc -l)  #Compta nom arxius "type f" amb wc- l
num_carpetes=$(find "$1" -maxdepth 1 -type d | wc -l) #Compta nom directori "type d" amb wc- l

echo "Nombre d'arxius dins de $1: $num_arxius"  #Les mostra
echo "Nombre de carpetes dins de $1: $num_carpetes"

echo "Noms dels arxius:"
find "$1" -maxdepth 1 -type f -exec basename {} \;  #Amb maxdepth de type f, busca el basename del arxiu
echo "Noms de les carpetes:"
find "$1" -maxdepth 1 -type d -exec basename {} \; #Amb maxdepth de type d, busca el basename del directori
