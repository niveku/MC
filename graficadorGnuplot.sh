#!/bin/bash

figlet "GnuPlot"
echo "====================================="
echo "Ingresar nombre del archivo csv:"
read nombre
echo "Ingresar la columna que representa el eje x:"
read x
echo "Ingresar la columna que representa el eje y:"
read y
gnuplot -persist << EOF
#!/usr/local/bin/gnuplot -persist
set term qt
set datafile separator ","
plot "$nombre" using $x:$y with linesp
pause -1
EOF

