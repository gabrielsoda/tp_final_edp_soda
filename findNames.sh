#!/bin/bash
<<<<<<< HEAD
#Este es el tercer ejercicio del tp final de edp
=======

#Este es el tercer ejercicio del tp final de edp

# Identificación de nombres propios (se identifican sólo si están en este formato
# Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.
# Ejemplos: Mateo, Estonoesunnombre, Ana.

# Se lee el archivo e identifica cada palabra
while read -r LINEA; do

  # Recorremos la línea para extraer cada palabra de ella

  for palabra in $LINEA; do
  
    # Nos fijamos si el primer caracter de la palabra está en mayúsculas

    if [[ "${palabra:0:1}" == [[:upper:]] ]]; then
      # Imprimimos la palabra que cumple con el criterio (primer letra mayúscula)
      echo "$palabra"
    fi

  done

done < "$1"
# Al poner "< $1" luego del done, expresamos que $1 es el nombre del archivo que 
# queremos leer
>>>>>>> ej3_findNames
