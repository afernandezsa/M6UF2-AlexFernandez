#!/bin/bash

cont=0 #Contador que comptarà zeros

for i in "$@"; do  #Per a cada arguments de la línea sencera "$@" fa: si és igual a 0, suma, sinó res i acaba
	if [ $i -eq 0 ]; then
    		cont=$((cont+1))
	fi
done

echo "Hi han $cont zeros."  #Mostra el total de zeros
