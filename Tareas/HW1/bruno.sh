#!/bin/bash
figlet "Kepler"
echo "==========================="
# En caso de no tener el archivo en la misma carpeta usar:
# wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/kepler.csv
lineas=$(wc -l kepler.csv | awk '{print $1}')
planetas=$( expr $lineas - 1)
echo -e "El número de planetas extrasolares en el catálogo es de:\c"
echo " $planetas"
