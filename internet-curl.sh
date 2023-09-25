#!/usr/bin/env bash
if curl https://www.google.com &> /dev/null; then
	echo $?;
	echo "sí hay internet";
	exit 0;
else
	#echo $?;
	echo "no hay internet";	
	exit 1;
fi
