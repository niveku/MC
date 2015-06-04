#!/bin/bash
figlet "Kepler" #Encabezado para que se vea bien.
echo "==========================="
rm kepler.csv #Remueve el archivo usado en caso de que se actualice en línea.
wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/kepler.csv #Descarga el archivo usado (actualizado).
lineas=$(wc -l kepler.csv | awk '{print $1}') #Asigna el total de lineas encontrado en el archivo.
planetas=$( expr $lineas - 1) #Le resta el encabezado al número de líneas para hallar el número de planetas.
echo -e "El número de planetas extrasolares en el catálogo es de:\c" # -e y \C permiten que la siguiente salida de la terminal se presente en la misma línea.
echo " $planetas"
echo -e "El número de planetas extrasolares con menos de una centésima de la masa de Júpiter es: \c "
awk -F"," '{if ($2 >= 0 && $2 < 0.01) print $1}' kepler.csv | wc -l #Cuenta las líneas cuya segunda columna (masa) es un número en el intervalo [0,0.001).
echo "Cuyos nombres son:"
awk -F"," '{if ($2 >= 0 && $2 < 0.01) print $1}' kepler.csv | sed 's/^/>>/' #Presenta los nombres de los planetas cuya masa un número en el intervalo [0,0.001) con un pequeño adorno al principio. 
echo -e "El planeta con menor periodo orbital es: \c"
#sort --field-separator=',' --key=6 -n kepler.csv | awk -F"," '{ if ( $1 != "NAME") print $1}' |  head -1 #Organiza el archivo con respecto a la columna 6 y proporciona el nombre del planeta en la primera entrada (menor) evitando los encabezados.  
#NOTA: El anterior método no funcionó ya que el sort no tomaba en cuenta los decimales como menores a enteros, por lo que debí ajustarlo de manera fea. En espera a respuesta del profesor.
sort --field-separator=',' --key=6 -n kepler.csv | awk -F"," '{ if ( $6 < 0.3) print $1}' |  head -1
