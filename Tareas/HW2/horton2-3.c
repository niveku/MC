/* Ejercio 2.3 */
/* Escrito por Kevin Henao */ 
/* Algo sencillo en C que debe entregar el precio total de una compra. */

# include <stdio.h>

void main()
{
	const float precio1 = 3.50; /* Precio de la versión estándar. */	
	const float precio2 = 5.50; /* Precio de la versión de lujo. */
	int cantidad1; /* Maneja la cantidad de objetos de calidad estándar.*/
	int cantidad2; /* Maneja la cantidad de objetos de lujo. */
	float total; /* Maneja el precio total. */

	/*printf("CALCULANDO EL PRECIO \nIngrese el tipo de producto. Regular o de lujo (Ingrese 1 o 2): \n");
	scanf("%d", &tipo); Guarda el tipo de producto requerido.
	printf("Ingrese la cantidad de unidades que requiere de este producto: \n");
	scanf("%d", &cantidad);
	total = preciocantidad * cantidad; 
	No funcionó porque no sé cómo unir las variables*/

	printf("CALCULANDO EL PRECIO \nNOTA: No funcionó como quería :( \nIngrese la cantidad de productos de calidad estándar a comprar: \n");
	scanf("%d", &cantidad1); /* Guarda la cantidad de productos de calidad estándar requeridos. */
	printf("Ingrese la cantidad de productos de de lujo a comprar: \n");
	scanf("%d", &cantidad2); /* Guarda la cantidad de productos de lujo requeridos. */

	total = (cantidad1 * precio1) + (cantidad2*precio2);
	printf("El total a pagar es de: %.2f$ \n", total);

}