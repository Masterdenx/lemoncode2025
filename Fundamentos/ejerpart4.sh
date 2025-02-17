#!/bin/bash

#Comienzo definiendo la URL como mi constante
URL="https://es.lipsum.com"
#esta url es perfectamente editable antes de ejecutar el script
ARCHIVO="paginaweb.txt"

#procedo a verificar que se halla pasado una palabra como parametro
if [ -z "$1" ]; then
   echo "Uso: $0"
   exit 1

fi

PALABRA="$1"

#Se procede con curl a descargar la web y guardar el contenido en mi archivo
curl -s "$URL" -o "$ARCHIVO"

# Y luego procedo a contar las veces que aparece la palabra
CANTIDAD=$( grep -o -i "$PALABRA" "$ARCHIVO" | wc -l )

if [ "$CANTIDAD" -eq 0 ]; then
   echo "No encontre la palabra \"$PALABRA\""

else
   #Aqui procedo a obtener la primera linea donde aparece dicha palabra si fuese el caso
   PRIMERALINEA=$( grep -n -i "$PALABRA" "$ARCHIVO" | head -n 1 | cut -d: -f1 )

   echo "La palabra \"$PALABRA\" aparece $CANTIDAD veces"
   echo "Aparece por primera vez en la linea $PRIMERALINEA"

fi
