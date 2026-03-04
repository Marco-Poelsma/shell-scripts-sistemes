#!/bin/bash

# Per assignar variables, ho podem fer directament. És important que no hi hagi espais.
text="Hola Món"

echo -e "$text"

# També podem assignar una constant mitjançant readonly
readonly FAVOURITE_ANIMAL="cat" # No podem modificar el valor d'aquesta variable. Per bones pràxis, és recomanable fer servir UPPER_SNAKE_CASE en comptes de lowerCamelCase

echo -e "$FAVOURITE_ANIMAL"

# Podem fer operacions aritmètiques:
passengers=0

echo $passengers

passengers=$[$passengers+10] # I si canviem el valor de la variable...

echo $passengers

# IMPORTANT: Quan treballem amb nombres, per defecte treballem amb valors enters. Per treballar amb valors decimals, necessitem bc. Sol estar instal·lat per defecte
# Instal·lació en sistemes basats en Debian (Ubuntu, Mint, etc.): sudo apt-get install bc
# Instal·lació en sistemes basats en Arch (Arch, EndeavourOS, etc.): sudo pacman -S bc

divisioEnters=$[6/7]

echo $divisioEnters

echo -e "scale=5; 6/7" | bc -l | awk '{printf "%.5f\n", $0}'

# Podem llegir l'input de l'usuari fent servir read

echo -e "Introdueix el dia"
read dia

echo -e "\nIntrodueix el mes"
read mes

echo -e "\nIntrodueix l'any"
read any

echo -e "Avui és el $dia de $mes de l'any $any \n"

# Condicionals

# If... else if... else

if [ 1 -eq 1 ]; then
	echo "1 és el mateix que 1"
elif [ 1 -eq 2]; then
	echo "1 és el mateix que 2"
else
	echo "1 no és el mateix que 1"
fi

# Switch-case

echo -e "Introdueix 1, 2 o 3"
read opcio

case $opcio in
	1)
		echo -e "Has introduit 1"
		;;
	2)
		echo -e "Has introduit 2"
		;;
	3)
		echo -e "Has introduit 3"
		;;
	*)
		echo -e "No has introduit 1, 2 o 3"
		;;
esac
