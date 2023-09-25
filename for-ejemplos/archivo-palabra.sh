#!/usr/bin/env bash
### parámetros
ruta-archivos="$1"
palabra-buscar="$2"

### validación de parámetros
if ! test "2"; then
	echo "Se esperaban al menos dos parámetros, directorio y cadena por buscar."
fi

### validación de directorios
echo "Validando directorio..."; sleep 1
cd $ruta-archivos && echo "Ruta validada." || echo "No es un directorio."

### impresión de archivos
for archivo in $(ls $ruta-archivos) do
	echo $archivo
done
