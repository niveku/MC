#!/bin/bash

figlet "GnuPlot"
#echo "====================================="
#echo "Ingresar nombre del archivo csv:"
#read nombre
#echo "Ingresar la columna que representa el eje x:"
#read x
#echo "Ingresar la columna que representa el eje y:"
#read y
gnuplot -persist << EOF
#!/usr/local/bin/gnuplot -persist
#set term png
set term qt
set datafile separator ","
#set out 'grafica.png'
plot "$1" using $2:$3 with linesp
pause -1
EOF

