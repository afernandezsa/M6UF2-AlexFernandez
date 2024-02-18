#!/bin/bash

username="afs"  #Creo variable amb el nom d'usuari que es connectarà per SSH
server="192.168.1.74"  #Indico IP la qual es connectarà SSH

#Creo HereDocs amb les comandes de prova com whoami o uptime i finalitzo amb EOF
comandes=$(cat << 'EOF'  
whoami 
echo "Temps d'activitat del sistema:" 
uptime
EOF
)

ssh $username@$server "$comandes" #Fa la connexió SSH
