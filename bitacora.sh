#!/usr/bin/env bash
### BEGIN INIT INFO
# Provides: 			bitacora
# Required-start:		$local_fs $syslog
# Requires-stop: 		$local_fs $syslol
# Default-start: 		1 2 3 4 5
# Default-stop: 		0 6
# X-interactive: 		true
# Short-description:	una bitacora sencilla
# Description:			manda un mensaje cuando se enciende y se apaga el sistema
### END INIT INFO

case "$1" in
	start)
		echo "Iniciando el servicio de bitacora"
		echo "---------------------------------" >> /var/log/mibitacora.log
		echo -n "El sistema se prendio: " >> /var/log/mibitacora.log
		date >> /var/log/mibitacora.log
		echo "---------------------------------" >> /var/log/mibitacora.log
		;;
	stop)
		echo "Deteniendo el servicio de bitacora"
		echo "---------------------------------" >> /var/log/mibitacora.log
		echo -n "El sistema se apago: " >> /var/log/mibitacora.log
		date >> /var/log/mibitacora.log
		echo "---------------------------------" >> /var/log/mibitacora.log
		;;
	*)
		echo "Error"
esac
