#!/bin/bash

# Ejercicio 4 del TP FINAL de EDP:
# Obtener la oración más larga, la más corta y el promedio de longitud.


# Las variables que van a almacenar las oraciones más corta y la más larga.
oracion_mas_corta=""
oracion_mas_larga=""
# Acá se almacenará el número total de oraciones y la longitud total. 
oraciones_totales=0
longitud_total=0

# Recorremos cada línea del archivo (tener en cuenta que le pasamos 
# una oración por línea gracias a "λ")
while read -r oracion_actual; do
  # Sumamos uno al conteo de oraciones.
  oraciones_totales=$((oraciones_totales + 1))

  # Agregamos el largo de la oración actual al total de largos.
  longitud_total=$((longitud_total + ${#oracion_actual}))
  # Si la línea actual es más corta que la oración anterior más corta,
  # actualizamos la variable "oracion_mas_corta" con la oración actual.
  if [ ! -z "$oracion_actual" ]; then
    if [ -z "$oracion_mas_corta" ] || [ ${#oracion_actual} -lt ${#oracion_mas_corta} ]; then
      oracion_mas_corta="$oracion_actual"
    fi
  fi
  # Si la línea actual es más larga que la oración anterior más larga,
  # actualizamos la variable "oracion_mas_larga" con la oración actual.
  if [ -z "$oracion_mas_larga" ] || [ ${#oracion_actual} -gt ${#oracion_mas_larga} ]; then
    oracion_mas_larga="$oracion_actual"
  fi

  # "λ":
done < <(cat $1  | sed -r 's/([^.]*[.!?])/\1\n/g' | sed '/^$/d')

# Calculamos la longitud promedio.
longitud_promedio=$((longitud_total / oraciones_totales))

# Mostramos las oraciones obtenidas y el promedio de longitudes.
echo "El promedio de caracteres de cada oración es: $longitud_promedio"
echo "La oración más corta en el archivo es: $oracion_mas_corta"
echo "La oración más larga en el archivo es: $oracion_mas_larga"

