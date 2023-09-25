#!/usr/bin/env bash
archivo1="$1"
archivo2="$2"
ruta_salida="$3"

cat "$archivo1" > "$ruta_salida"
cat "$archivo2" >> "$ruta_salida"
