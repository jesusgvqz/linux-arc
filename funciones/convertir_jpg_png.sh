#!/usr/bin/env bash
# Jesus Heron Galvez Vazquez

# crea una función de ayuda
function ayuda() {
	echo "Estructura: convertir_jpg_png.sh \$ruta"
	echo "La \$ruta debe ser de un directorio. Ejemplo: /tmp/folder"
}

ruta="$1"
# valida parámetrps
test -d "$ruta" || { echo "Se espera recibir un directorio.";ayuda ; exit 1; }

# la funcionalidad de conversión debe estar en una función o varias
# usa globbing para el recorrito del directorio
# usa el comando convert para la conversión
conversion() {
	for archivo in "$ruta"/*.jpg; do
			convert "$archivo" "$archivo.png"
	done
}

conversion "$ruta"
echo "Las imagenes se han convertido a .png"


