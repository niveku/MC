/* Ejercio 2.2 */
/* Escrito por Kevin Henao */ 
/* Algo sencillo en C que debe recivir las dimensiones de un cuarto en pies y pulgadas y presentar el área en yardas cuadradas. */

# include <stdio.h>

void main()
{
	const float inches_to_yards = 0.0277777778; /* Constante de cambio entre pulgadas y yardas. */
	const float feet_to_inches = 12; /* Constante de cambio de pies a pulgadas. */
	float yards1; /* Declaración del float para la conversión a yardas. */
	float ininches1; /* Declaración del float para el valor ingresado en pulgadas. */
	float feet1; /* Declaración del float para el valor ingresado en pies. */
	float inches1; /* Declaración del float para el total en pulgadas. */
	float yards2; /* Declaración del float para la conversión a yardas. */
	float ininches2; /* Declaración del float para el valor ingresado en pulgadas. */
	float feet2; /* Declaración del float para el valor ingresado en pies. */
	float inches2; /* Declaración del float para el total en pulgadas.  */
	float squareyards; /* Declaración del float para la conversión final a yardas. */

	printf("CALCULANDO EL ESPACIO \nIngrese la componente del ancho de la sala en pies: \n"); /* Presentación de la acción interactiva para ingresar los valores en pies para el ancho. */
	scanf("%f", &feet1); /* Lee y guarda el valor ingresado para el ancho en pies. */
	printf("Ahora ingrese el valor faltante del ancho en pulgadas: \n"); /* Presentación de la acción interactiva para ingresar los valores del ancho de la sala en pulgadas. */
	scanf("%f", &ininches1); /* Lee y guarda el valor ingresado para el ancho de la sala en pulgadas. */

	printf("Ingrese la componente del largo de la sala en pies: \n"); /* Presentación de la acción interactiva para ingresar los valores en pies para el largo. */
	scanf("%f", &feet2); /* Lee y guarda el valor ingresado para el largo en pies. */
	printf("Ahora ingrese el valor faltante del largo en pulgadas: \n"); /* Presentación de la acción interactiva para ingresar los valores del largo de la sala en pulgadas. */
	scanf("%f", &ininches2); /* Lee y guarda el valor ingresado para el largo de la sala en pulgadas. */

	inches1 = (feet1*feet_to_inches) + ininches1; /* Convierte los pies a pulgadas y las suma con las otras. */
	yards1 = inches1*inches_to_yards; /* Convierte el total de pulgadas del ancho a yardas. */

	inches2 = (feet2*feet_to_inches) + ininches2; /* Convierte los pies a pulgadas y las suma con las otras. */
	yards2 = inches2*inches_to_yards; /* Convierte el total de pulgadas del largo a yardas. */

	squareyards = yards1 * yards2; /* Halla el área en yardas cuadradas. */
	printf("El área en yardas cuadradas es: %.2f \n", squareyards); /* Da el formato deseado al output del programa con el resultado*/
	
}
