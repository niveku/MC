#!/bin/bash
 figlet "arXiv"
 echo "----------------------------------------------------------"
 echo "Buscando en arXiv por nuevo material."
 echo "Tema: Biología cuantitatíva."
 echo "Dirección: http://arxiv.org/archive/q-bio/new"
 echo "Ingrese lo que desea buscar en el material nuevo de esta sección:"
 read tema
 echo "=========================================================="
 echo -e "El número de artículos nuevos con el tema buscado fue:\c"
 respuesta=$(curl -s http://arxiv.org/list/q-bio/new | grep \>Title:| grep -ic $tema)
 echo $respuesta
 if [ "$respuesta" != "0" ]; then
    echo "Los artículos encontrados fueron:"
    curl -s http://arxiv.org/list/q-bio/new | grep \>Title:| grep -i $tema| sed 's/.*span//g'
 fi 