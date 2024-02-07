#!/bin/bash

until [ $# -eq 3 ] #Fins que els arguments no siguin 3 avisa i surt.
do
 	echo "Has d'introduïr 3 valors!"
	exit
done

echo "Els paràmetres introduïts són: $1, $2, $3" #Mostro fora del until, ja que estarà bé
