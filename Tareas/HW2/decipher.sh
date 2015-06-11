#!/bin/bash
for i in $(seq 1 10)
do
if [ $i = 1 ] # Se encarga de que el primer recorrido tome el archivo que le llega por pipes.
then
./flip.sh 'z' 'v' | ./flip.sh 'y' 'h' | ./flip.sh 'x' 'p' | ./flip.sh 'w' 'u' | ./flip.sh 'v' 'z' | ./flip.sh 'u' 's' | ./flip.sh 't' 'f' | ./flip.sh 's' 'g' | ./flip.sh 'r' 'x' | ./flip.sh 'q' 'e' | ./flip.sh 'p' 'd' | ./flip.sh 'o' 'r' | ./flip.sh 'n' 'm' | ./flip.sh 'm' 'b' | ./flip.sh 'l' 'j' | ./flip.sh 'k' 'a' | ./flip.sh 'j' 'c' | ./flip.sh 'i' 'y' | ./flip.sh 'h' 'k' | ./flip.sh 'g' 't' | ./flip.sh 'f' 'q' | ./flip.sh 'e' 'o' | ./flip.sh 'd' 'l' | ./flip.sh 'c' 'w' | ./flip.sh 'b' 'n' | ./flip.sh 'a' 'i'	> temp$i.txt
else
#nota temp`echo "$i-1" | bc -l`.txt busca el archivo del recorrido anterior.
	./flip.sh 'z' 'v' temp`echo "$i-1" | bc -l`.txt | ./flip.sh 'y' 'h' | ./flip.sh 'x' 'p' | ./flip.sh 'w' 'u' | ./flip.sh 'v' 'z' | ./flip.sh 'u' 's' | ./flip.sh 't' 'f' | ./flip.sh 's' 'g' | ./flip.sh 'r' 'x' | ./flip.sh 'q' 'e' | ./flip.sh 'p' 'd' | ./flip.sh 'o' 'r' | ./flip.sh 'n' 'm' | ./flip.sh 'm' 'b' | ./flip.sh 'l' 'j' | ./flip.sh 'k' 'a' | ./flip.sh 'j' 'c' | ./flip.sh 'i' 'y' | ./flip.sh 'h' 'k' | ./flip.sh 'g' 't' | ./flip.sh 'f' 'q' | ./flip.sh 'e' 'o' | ./flip.sh 'd' 'l' | ./flip.sh 'c' 'w' | ./flip.sh 'b' 'n' | ./flip.sh 'a' 'i' > temp$i.txt
rm temp`echo "$i-1" | bc -l`.txt
fi 
done
#cat temp10.txt #lo resuelve normal.
cat temp10.txt | sed 's/^d/D/' | sed 's/student/ &/' | sed 's/run/, &!/' | sed 's/you/ You /'|sed 's/been/ & /'| sed 's/.$/&!/'|figlet #Lo resuelve con ajustes.
rm temp10.txt #remueve el último archivo temporal
