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

echo -e "6/7" | bc -l
