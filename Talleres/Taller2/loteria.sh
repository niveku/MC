#!/bin/bash
figlet "Fortuna?"
echo "=================================================================="
rm lottery.csv
wget -q https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/master/2015-V/actividades/lottery/lottery.csv 
echo -e "la fecha actual es:\c"
awk -F"," '{print $1}' lottery.csv | head -1
grep "201317383" lottery.csv | echo $2
echo -e "El taller del estudiante con código 201317383 \c"
grep "201317383" lottery.csv | sed 's/.*,//g'
