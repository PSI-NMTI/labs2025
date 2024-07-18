#/bin/sh

#Coloque IP
IP=192.168.1.10

#Coloque comunidad
community=PSIRedMon

#Coloque interfaz
interface=wifi0

clear

echo ""
echo "Revision LAB1 - PSI 2024"

echo ""
echo "IP"
ip a show dev $interface | grep -oP '(?<=inet\s)\d+(\.\d+){3}'
echo ""

echo "Datos del Sistema"
echo ""

echo "System"
snmpwalk -v 1 -c $community $IP system.1
snmpwalk -v 1 -c $community $IP system.4
snmpwalk -v 1 -c $community $IP system.6
echo ""

echo "Interfaces"
snmpwalk -v 1 -c $community $IP ifDescr
echo ""

echo "Disk Percent"
snmpwalk -v 1 -c $community $IP dskPercent.1
echo ""

snmpwalk -v 1 -c $community $IP > snmpwalktest.txt

echo "Número de lineas"
wc -l snmpwalktest.txt
echo ""

rm -rf snmpwalktest.txt
echo "Archivo borrado"
