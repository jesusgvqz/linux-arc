#!/usr/bin/env bash
ruta_archivo="$1"
destino_respaldo="$2"
nombre_archivo=$(basename "$ruta_archivo")

cp $ruta_archivo -f  $destino_respaldo/$nombre_archivo-$(date +"%m-%d-%Y")
echo $USER | cat - $ruta_archivo > temp && mv temp $destino_respaldo$nombre_archivo-$(date +"%m-%d-%Y")


#### solución en clase
#
# whoami > "$destino_respaldo/$nombre_archivo"
# cat "$ruta_archivo" >> "$destino_respaldo/$nombre_archivo-$(date +"%m-%d-%Y")"
