#!/bin/bash

cont="si"   #Semàfor per a parar quan posi "si" al final
while [ "$cont" == "si" ]  #Mentre sigui "si" fa:
do
	op=("pedra" "paper" "tisores")  #Llista amb opcions vàlides
	maquina=${op[$((RANDOM % 3))]}  #Funció que escull un random a la màquina entre les vàlides

	echo "1. Pedra"
	echo "2. Paper"
	echo "3. Tisores"
	read -p "Introdueix una opció entre les 3: " escull  #Escriuré una de les 3

	case $escull in   #Ho faré amb case, que son 3 opcions diferents i una que mira si els números son entre 1 i 3, sinó avisa i si està ben respòs continua amb "continue
    	1) usuari="pedra";;
    	2) usuari="paper";;
    	3) usuari="tisores";;
    	*) echo "Has d'escollir entre 1 2 o 3. Introdueix 1, 2 o 3."; continue;;
	esac

	echo "L'usuari ha escollit: $usuari"  #Mostra que escull usuari
	echo "La màquina ha escollit: $maquina"  #Mostra que escull la màquina a partir del random

	if [ "$usuari" == "$maquina" ]; then  #Si la opció del usuari és la mateixa de la màquina serà empat
    		echo "Empat entre tu i la maquina!"
	elif [ \( "$usuari" == "pedra" \) -a \( "$maquina" == "tisores" \) ] ||  #Série de elifs on comprovo qui guanya depenent de la lògica del joc obvi
	     	[ \( "$usuari" == "paper" \) -a \( "$maquina" == "pedra" \) ] ||     # "-a" comprovo que les dos son la opció escrita, és a dir son verdaderes.
	     	[ \( "$usuari" == "tisores" \) -a \( "$maquina" == "paper" \) ]; then  #"[ \( ... \) " Agrupa condicions dins de un elif en comptes de fer varis, a més la SHELL interpreta millor gràcies a [\
	    	echo "Guanya l'usuari!!!"
	else
	    	echo "La màquina guanya :("  #Sinó es compleix cap de les anteriors, guanyarà màquina
	fi  #Finalitza condicional

	read -p "Vols seguir jugant? (si per a seguir): " seguir  #Pregunta si vol seguir amb una variable.
	if [ "$seguir" != "$cont" ]; then  #Si aquesta no és igual al cont primer que era "si", canvio per complet la sortida de la variable cont, de manera que finalitza el while
    		cont="no"
  	fi #Finalitza condicional
  
done #Acabo bucle
