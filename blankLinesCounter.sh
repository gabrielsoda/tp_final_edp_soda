#!/bin/bash

# Ejercicio 5 del TP FINAL de EDP:
# Contador de líneas en blanco

# En la siguiente variable iremos contando las líneas en blanco que haya en el archivo
contador_lineas_vacias=0

# Recorremos cada línea del archivo:
while read -r linea; do

  # Si la línea actual está vacía o si solo contiene caracteres de espacios
  # sumamos una unidad al contador de líneas vacías.

  if [[ -z "$linea" || "$linea" =~ ^[[:space:]]*$ ]]; then
    contador_lineas_vacias=$((contador_lineas_vacias + 1))
  fi

done < $1

# Mostramos el número de líneas en blanco
echo "Hay $contador_lineas_vacias líneas en blanco en el archivo."