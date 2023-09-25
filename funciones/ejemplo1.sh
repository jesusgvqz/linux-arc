#!/usr/bin/env bash

entrada="$1"

function saludar() { #los () son opcionales
	echo "hola $1"
}

saludar "$entrada"
saludar "$1"
