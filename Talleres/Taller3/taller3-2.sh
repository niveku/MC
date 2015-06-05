#!/bin/bash

cd 
cd c-examples/src

for file in $(ls)
do
  if [ "$file" == "$(ls | grep "c30")" ]
  then
    break
  else
    gcc -o $file.out $file
    grep "Example" -A1 $file
    ./$file.out
    read -n1 -r -p "Presionara cualquier tecla para continuar:" key
  fi
done