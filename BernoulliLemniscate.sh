#!/bin/bash
figlet "Lemniscate"
echo "========================================"
echo "Ingrese el valor de la distancia entre los punto generadores y el orígen:"
read a
gnuplot -persist << EOF
set term dumb
set polar
plot sqrt(2*($a**2)*(cos(t))**2)
EOF