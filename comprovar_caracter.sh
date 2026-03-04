#!/bin/bash

# Llegir un caràcter
echo -e "Introdueix un caràcter"
IFS= read -r c

# Font: https://unix.stackexchange.com/questions/407356/shell-script-check-whether-a-single-character-input-is-uppercase-or-lowercase
case $c in
	([[:lower:]]) echo -e "Has introduit una lletra minúscula";;
	([[:upper:]]) echo -e "Has introduit una lletra majúscula";;
	([[:alpha:]]) echo -e "Has introduït una lletra que no és ni majúscula ni minúscula";;
	([[:digit:]]) echo -e "Has introduit un nombre";;
	(?) echo -e "Has introduit un caràcter que no és lletra ni nombre";;
	("") echo -e "No has introduit res";;
	(*) echo -e "Has introduit qualsevol altra cosa";;
esac
