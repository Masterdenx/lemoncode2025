#!bin/bash

# Procedo a definir el texto por defecto si no hay argumento
TEXTO="${1: QUE ME GUSTA LA BASH!!!!!!!!}"

# Procedo a crear la jerarquia de mis directorios
mkdir -p foo/dummy foo/empty

# Creo a continuacion file1.txt junto con el contenido especificado en la variable
echo "$TEXTO" > foo/dummy/file1.txt

# Ahora procedo con el file2.txt totalmente vacio
touch foo/dummy/file2.txt

# procedo a volcar el contenido del file1 en el file2.txt y mover despues el file2.txt al directorio empty
cp foo/dummy/file1.txt foo/dummy/file2.txt && mv foo/dummy/file2.txt foo/empty/


echo "Estructura realizada correctamente, aqui el Contenido de los archivos:"
echo "file1.txt:"
cat foo/dummy/file1.txt
echo "file2.txt:"
echo "file2.txt"
cat foo/empty/file2.txt

