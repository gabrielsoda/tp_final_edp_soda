#!/bin/bash
#Este es el tercer ejercicio del tp final de edp

# Identificación de nombres propios (se identifican sólo si están en este formato
# Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.
# Ejemplos: Mateo, Estonoesunnombre, Ana.

Nombres="^[A-Z]+[a-z]+[a-z]*"
PALABRAS=$(cat $1 | tr "? ! : , ; ." "\n")
for PALABRA in $PALABRAS;
do
	if [[ $PALABRA =~ $Nombres ]]; then
		echo "Nombre:" "$PALABRA"
	fi
done