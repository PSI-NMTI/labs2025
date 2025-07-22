## Script para revisión Lab No. 2 - MRTG

if command -v mrtg > /dev/null 2>&1; then
    echo "SI instalo mrtg"
else
    echo "NO instalo mrtg"
fi
if command -v snmpget -v 1 -c public localhost dskPercent.1 > /dev/null 2>&1; then
    echo "SI se se pueden realizar consultas de snmp"
else
    echo "NO se pueden realizar consultas de snmp"
fi
if [ -d "/var/www/html/mymrtg" ]; then
  ### Take action if $DIR exists ###
  echo "SI se encontro directorio de mymrtg"
else
  if [ -d  "/var/www/mymtrg" ]; then
     echo "SI se encontro directorio de mymrtg"
  else
     echo "NO creo directorio de mymrtg"
  fi
fi
if [ -f "/etc/mrtg/mymrtg.cfg" ]; then
    echo "SI se encontro archivo mymrtg.cfg"
  else
    echo "NO creo archivo mymrtg.cfg"
fi
if [ -f "/var/www/mymrtg/index.html" ]; then
    echo "SI se encontro pagina de inicio mymrtg"
  else
    if [ -f "/var/www/html/mymrtg/index.html" ]; then
      echo "SI se encontro pagina de inicio mymrtg"
    else
      echo "NO se encontro pagina de inicio mymrtg"
    fi
fi
if curl -s --head  --request GET "http://localhost/mymrtg/" | grep "200 OK" > /dev/null; then
   echo "SI funciona la pagina web mymrtg"
else
   echo "NO funciona la pagina web mymrtg"
fi