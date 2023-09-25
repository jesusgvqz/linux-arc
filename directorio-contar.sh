#!/usr/bin/env bash

### variables
directorio="$1"

### validación de parámetros
if ! test "1"; then
	echo "Debe ingresar al menos un parámetro."
	exit 1
fi

### validación de variables
if [ ! -d $directorio/ ]; then
	echo "El directorio $directorio no existe."
	exit 1
fi

### contador de subdirectorios
num_subdirectorios=0
for subdir in $directorio/*; do 
	if [ -d "$subdir" ]; then
		let num_subdirectorios=num_subdirectorios+1
	fi
done

echo "$directorio tiene $num_subdirectorios subdirectorio(s)."

### resolución en clase
# for elemento in (ls "directorio"); do

