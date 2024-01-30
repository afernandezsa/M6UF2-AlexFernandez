#!/bin/bash

read -p "nom d'usuari: " nom #Llegeix i mostra
read -s -p "contrasenya: " contra #Llegeix i oculta
echo -e "\n$nom $contra" #Ho mostra de tal manera que ho mostri a una altre línia amb "/n"
