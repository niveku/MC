/* Ejercio 2.4 */
/* Escrito por Kevin Henao */ 
/* Algo sencillo en C que entrega la paga por hora trabajada de un empleado. */

# include <stdio.h>

void main()
{	
	float salario; /* Maneja el sueldo semanal. */
	float horas; /* Maneja las horas laboradas en la semana. */
	float promedio; /* Maneja el resultado del "promedio". */
	int dol; /* Maneja el promedio redondeado a dólares*/
	float cent; /* Maneja los centavos del promedio. */
	printf("\nCALCULANDO EL SUELDO POR HORA \n \nIngrese su salario en dólares a la semana: \n"); /* Solicita el salario semanal*/
	scanf("%f", &salario); /* Guarda el salario semanal ingresado por el usuario. */
	printf("Ingrese la cantidad de horas laboradas en la semana: \n"); /* Solicita el número de horas trabajadas a la semana. */
	scanf("%f", &horas); /* Guarda el salario semanal ingresado por el usuario. */
	promedio = salario/horas; /* Halla el promedio de sueldo por hora. */
	dol = (int) promedio; /* Le quita los decimales al promedio redondeando el resultado. */
	cent = promedio*100 - dol*100; /* Halla los centavos removiendo los decimales. */
	printf("Tu promedio de sueldo por hora es de %d dólares con %.0f centavos \n", dol, cent); /* Presenta el resultado con el formato requerido. */
}
