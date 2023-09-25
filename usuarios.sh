#!/usr/bin/env bash

### variables
archivo="$1"

### validación de errores
if [ ! -f "$archivo" ]; then
	echo "No es un archivo."
fi

###
while read -r linea; do
	usuario=$(echo $linea | cut -d : -f 1);
	shell=$(echo $linea | cut -d : -f 2);
#	useradd $usuario -s $shell -m;
echo $usuario $shell
done <$archivo

