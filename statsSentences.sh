#!/bin/bash

# Cuarto ejercicio del tp final de edp

#!/bin/bash


# Las variables que can a almacenar las oraciones más corta y la más larga.
shortest=""
longest=""

# Recorremos cada línea del archivo (tener en cuenta que le pasamos 
# una oración por línea gracias a "λ")
while read -r line; do

  # Si la línea actual es más corta que la oración anterior más corta,
  # actualizamos la variable "shortest" con la oración actual.
  if [ -z "$shortest" ] || [ ${#line} -lt ${#shortest} ]; then
    shortest="$line"
  fi
  # Si la línea actual es más larga que la oración anterior más larga,
  # actualizamos la variable "longest" con la oración actual.
  if [ -z "$longest" ] || [ ${#line} -gt ${#longest} ]; then
    longest="$line"
  fi

  # "λ":
done < <(cat $1  | sed -r 's/([^.]*[.!?])/\1\n/g' | sed '/^$/d')

# Mostramos las oraciones obtenidas
echo "La oración más corta en el archivo es: $shortest"
echo "La oración más larga en el archivo es: $longest"


