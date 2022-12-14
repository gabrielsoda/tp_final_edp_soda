#!/bin/bash

# Ejercicio 1 del TP FINAL de EDP:
# Indicador de la palabra más corta, la más largar y el promedio de longitud.

LARGA=0
CORTA=100
SUMA=0
CANT=0

for X in $(cat $1);
do
	palabra=$(echo ${#X})

	if [[ $palabra -gt $LARGA ]]
	then
		LARGA=$(($palabra))
		LARGA_LIT=$X
	fi
	if [[ $palabra -lt $CORTA ]]
	then
		CORTA=$(($palabra))
		CORTA_LIT=$X
	fi
	SUMA=$(($SUMA + $palabra))
	CANT=$(($CANT + 1))
done

echo "La palabra más corta es: $CORTA_LIT"
echo "La palabra más larga es: $LARGA_LIT"
echo "El promedio de longitud de palabras es: $(($SUMA / $CANT))"
