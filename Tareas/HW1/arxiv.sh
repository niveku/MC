#!/bin/bash
 figlet "arXiv" #encabezado
 echo "----------------------------------------------------------"
 echo "Buscando en arXiv por nuevo material."
 echo "Tema: Biología cuantitativa."
 echo "Dirección: http://arxiv.org/archive/q-bio/new"
 echo "Ingrese lo que desea buscar en el material nuevo de esta sección (Intentar con "gen"):"
 read tema #recibe un tema ingresado por el usuario.
 echo "=========================================================="
 echo -e "El número de artículos nuevos con el tema buscado fue:\c" #permite que la siguiente linea quede en el mismo reglón.
 respuesta=$(curl -s http://arxiv.org/list/q-bio/new | grep \>Title:| grep -ic $tema) #Asigna el total de lineas encontradas que corresponden a los títulos relacionados con el tema buscado.
 echo $respuesta #imprime la respuesta encontrada.
 if [ "$respuesta" != "0" ]; then #Se asegura que hayan trabajos para listarlos.
    echo "Los artículos encontrados fueron:"
    curl -s http://arxiv.org/list/q-bio/new | grep \>Title:| grep -i $tema| sed 's/.*span//g' #Organiza los títulos de los resultados para presentarlos. Quita las partes del código no necesarias (antes del <span)
 fi 