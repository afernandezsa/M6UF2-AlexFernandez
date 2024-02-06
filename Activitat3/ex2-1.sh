#!/bin/bash

arx=$1  #Agregi¡o variable per al paràmetre on passo l'arxiu

if [ -e $arx ]; then  #Si l'arxiu es troba en la ruta, avisa i acaba
   "L'arxiu $arx existeix"
fi

echo "Escriu paraules a agregar, escriu ':>' per a parar" 
while read -r parau && [ "$parau" != ":>" ]; do #Escriu paraules en cada linea amb "read -r" mentre sigui diferents a ":>", llavors va agregant paraula al arxiu passat
  echo $parau >> $arx
done #Acaba bucle

echo "S'han agregat les paraules al arxiu $arx"

