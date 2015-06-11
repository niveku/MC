#!/bin/bash
contador=0 #Maneja las veces que se entra en el ciclo.
omega=0.15 #Maneja la tasa de cambio del radio. 
while : #Ciclo sin condiciones por lo cual es un bucle infinito (Nota: se debe para con Ctrl+c)
do
	#pi=`echo "4*a(1)" | bc -l` #Halla el valor de pien BC y lo guarda en una variable de bash.
	clear #Limpia la terminal para que el círculo quede siempre centrado en la misma posición.
	r=`echo "c($contador*$omega)^2" | bc -l` #Lleva a cabo la operación r=cos²(wt) en BC y la guarda en una variable en bash.
	./circle.sh $r #Ejecuta el script que crea el círculo y le dice el 
	sleep 0.1 #Genera un breve descanso para permitir una animación adecuada.
	let contador=contador+1 #Aumenta en 1 el contador cada ciclo.
	
done #Fin del ciclo.
