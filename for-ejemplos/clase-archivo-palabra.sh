#!/usr/bin/env bash
directorio="$1"
cadena="$2"

test -d $directorio || { echo "El parámetro debe ser un directorio"; exit 1; }
test "$2" || { echo "Se esperaban al menos dos parámetros."; exit 1; }

for archivo in $(ls "$directorio");
do
	grep "$cadena" "$directorio/$archivo" &> /dev/null && echo "$archivo"
done
