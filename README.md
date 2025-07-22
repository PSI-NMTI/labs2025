# Revisión de Laboratorios NMTI 2025

Este repositorio es para poder encontrar los scripts necesarios para la revisión de cada uno de los laboratorios del curso.

Asegurarte que para presentarte a la revisión de cada laboratorio, ya realizaste todos los pasos de la guía.

## Laboratorio No. 1 - SNMP Basics

1. Asegurar que SNMP se encuentre instalado y corriendo.
2. Asegurar que se realizaron los cambios necesarios al archivo de configuración.
3. Recuerde antes de validar correr el script probar correr el comando "snmpwalk".
4. Por último, validar la interacición con el MIB Browser.

### Puntos Extras
Asegurar que desde algún otro dispositivo externo se pueda correr los comandos de SNMP.

# Script
Para poder ser corregido debe utilizar el siguiente [Script](https://github.com/PSI-NMTI/labs2025/blob/main/lab1-nmti2025.sh).


## Laboratorio No. 2 - MRTG


1. Correr comando: snmpwalk -v 1 -c public localhost dskPercent.1
2. Configuración adecuada de carpeta MRTG --> /var/www/mymrtg/index.html
3. Generación del index.html
4. Mostrar 5 gráficas:
- Traffic
- Disk Percent
- New TCP Connections
- CPU Load
- Free Memory (RAM)

# Script
Para poder ser corregido debe utilizar el siguiente [Script](https://github.com/PSI-NMTI/labs2025/blob/main/rev_lab2.sh).
