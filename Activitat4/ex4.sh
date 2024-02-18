#!/bin/bash

comprova() {
	server=$1  #Agafa argument passat per paràmetre
	estat=$(ping -c 1 $server > /dev/null && echo "Actiu" || echo "Desactivat") #Variable la qual fa ping al servidor passat i depenent si arriben, mostra si està actiu o no
	echo "$server està $estat" >> res.txt #Guarda els resultats a un arxiu
}

servers=(localhost 192.168.1.38) #Variable la qual guarda els servers que es passen com a paràmetre

for server in "${servers[@]}" #Per a cadascún, crida la funció comprova i agafa l'argument passat junt amb les comprovacions de la funció
do
	comprova $server
done #Acaba bucle

echo "Comprovació finalitzada. Resultats a res.txt" #Mostra on es desa

