#!/usr/bin/env bash

archivo="$1"

#test -f $archivo || { echo "error"; exit 1 }

fecha=$(date +%d%b%Y@%H-%M-%S)

tar -cvf /tmp/"$archivo$fecha".tar "$archivo"
 
