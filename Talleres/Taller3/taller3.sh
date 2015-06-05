#!/bin/bash

cd 
cd c-examples/src
for file in $(ls)
do
  echo $file
  echo "#$file" >> code.md
  echo "" >> code.md
  cat $file | sed 's/^#/\` &/g' | sed 's/}/& \`/g' >> code.md
done

