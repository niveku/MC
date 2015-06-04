#!/bin/bash
figlet "stardate"
echo "======================================"
year="$1"
figlet "$year"
echo " "

# NOTA: Se demora descargando entonces no abilitarlos a menos de que no se tengan los archivos.
#wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/hyg.csv
#wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/worldhistory.tsv

#NOTA: El archivo parece corrupto en la línea 963.Revisar.

echo "In $year this happened in world history:" 
echo " "
awk -v year=$year -F'\t' '{if ($1 == year) print $2}' worldhistory.tsv | sed 's/^/>>/' #Asigna la variable de entrada en bash a una en AWK, lo que permite la comparación de la fecha del archivo con la buscada. Después se imprime, tomando en cuenta los separadores de tabulación, la información de lo que aconteció en el año requerido. 
echo " "
echo "======================================"
echo " "
echo "In the same year the following stars emitted the light that can be seen in the night sky:"
echo " "
sed '/^#/d' hyg.csv | awk -F"," '{if ($1 == "id") print $8 "        " $9 "       " $2}' | sed 's/ra/RA°/g'|  sed 's/dec/DEC°/g' | sed 's/hip/HIP No./g' # Borra las primeras líneas del archivo csv y crea el encabezado de la tabla (de manera poco efectiva pero lo crea [No quería sólo con echo]).
sed '/^#/d' hyg.csv | awk -v year=$year -F"," '{if ($10 > 2015-year && $10 < 2015-year+1) print $8 " " $9 "   " $2}' | head -5 #Quita las primeras líneas del archivo y busca aquellas estrallas con distancia en años luz igual al lapso entre el año buscado y la actualidad (2015 - year). Además, muestra sólo hasta las primeros 5 estrellas.

#Nota: Preguntar cómo era que se daba formato a los outputs para que quedaran del mismo largo.



