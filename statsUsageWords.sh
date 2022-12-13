#!/bin/bash

# Este es el segundo ejercicio del tp final de edp
# Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro)
# letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene
# más apariciones a la que tiene menos). Es decir, filtrar las palabras que
# tengan al menos 4 letras y de éstas, elegir las 10 más usadas.

for x in $(cat $1 | tr "? ! : , ; ." "\n" );
do
	p=$(echo $x)
	letras=$(echo ${#x})
	if [[ $letras -ge 4 ]]
	then
		echo "$x" >> palabras-ge4Letras.txt
	fi
done
# "cat palabras-4.txt" Mostramos el archivo en donde se guardaron las palabras,
# "sort" ordenamos las palabras de la más chica a la más grande
# "uniq -c" agregamos al inicio de la línea el número de la cantidad de veces que aparecen
# "sort -r" las ordenamos de mayor a menor pero ahora según el número de la cantidad de veces que aparecen
# "head -n 10" mostramos las diez primeras

cat palabras-4.txt | sort | uniq -c | sort -r | head -n 10
rm palabras-4.txt