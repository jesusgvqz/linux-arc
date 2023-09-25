#!/usr/bin/env bash

ruta="$1"
# valida parámetrps
test -d "$ruta" || { echo "Se espera recibir un directorio.";ayuda; exit 1; }

# crea una función de ayuda
function ayuda() {
	echo "Estructura: convertir_jpg_png.sh $ruta"
	echo "La $ruta debe ser de un directorio."
}
# la funcionalidad de conversión debe estar en una función o varias
# usa globbing para el recorrito del directorio
# usa el comando convert para la conversión
conversion() {
	local ruta_dir="$1"
	for archivo in "$ruta_dir"/*.jpg; do
			#echo "$archivo"
			convert "$archivo" "$archivo.png"
	done
}

conversion "$1"
echo "test"


