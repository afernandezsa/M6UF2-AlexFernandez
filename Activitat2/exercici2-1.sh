#!/bin/bash

if [ "$#" -eq 3 ]; then  #Si #, que son els paràmetres, és igual a 3, serà correcte
	echo "És correcte, has introduit 3"
else #Sinó avisa
	echo "Has de passar 3 paràmetres!"
fi
