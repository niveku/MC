#!/bin/bash
echo "================================================"
radio="$1" #maneja el valor del radio ingresado al lado de la ejecución del script.
gnuplot << EOF #Inicializa gnuplot con una cadena de instrucciones.
set term dumb #Define la terminal como lugar donde se debe colocar el gráfico creado.
set size ratio -0.5 #Define un espacio de trabajo cuadrado de NOTA: el -0.5 se refiere a la relación entre X y Y para que el gráfico se presente de forma adecuada (cuadrada) en la terminal.
set parametric #Indica que el tipo de gráfia es paramétrica (por lo que se usa t).

#Define el rango de una vuelta para crear el círuclo en el parámetro t.
set trange [0:2*pi]

#Define las dimensiones del cuadrado de la gráfica.
set xrange [-1:1]
set yrange [-1:1]

#Remueve los elementos de la gráfica (ejes, leyenda y bordes)
unset key
unset xtics
unset ytics
unset border

#Define las funciones paramétricas X y Y para crear un círculo. 
X(t) = $radio*cos(t)
Y(t) = $radio*sin(t)

plot X(t),Y(t) #Plotea el circulo con sus funciones X y Y que dependen de t.

EOF

