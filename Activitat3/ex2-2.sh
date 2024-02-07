#!/bin/bash
usuaris=$(cat /etc/passwd | grep -Eo '^[^:]*[A-Z].*$' | cut -d ":" -f1)  #Mostra del /etc/passw si conté majúscula amb aquesta sintàxi, desde A-Z
echo "$usuaris" #Mostra si n'hi han
valid=false  #Serà un semàfor, per a parar bucle

while [ "$valid" = false ]; do  #Si és fals, fa
	read -p "Introdueix un nom d'usuari: " user #Llegeix un usuari

	if id "$user" &>/dev/null; then  #Si l'usuari existeix al sistema, mostra amb echo informació de fitxers.
	    	echo "Info del usuari $user:"
	    	echo "-----------------------------------"
	    	grep "^$user:" /etc/passwd
	    	echo ""
	    	echo "Grup principal:"
	    	echo "---------------"
	    	grep "^$user:" /etc/group
	    	echo ""
	    	echo "Grup secundari:"
	    	echo "-------------------"
	    	id -Gn $user #Mostra grups secundàris del sistema

    		valid=true #Finalitza bucle
	else
    		echo "L'usuari'$user' no existeix." #Sinó, avisa
	fi
done #Acaba bucle
