# Métodos Computacionales
### Primera clase 27-Mayo-2015
¡Hola mundo!
Este es el comienzo del curso **Métodos Computacionales**.

Herramientas del curso:
+ git
+ gitHub
+ bash
+ C
+ Python
+ MarkDown

y los métodos a estudiar son:
1. Interpolación
2. Análisis de Fourier
3. Diferenciación e integración numéricas
4. Ecuaciones diferenciales ordinarias
5. Ecuaciones diferenciales parciales
6. Métodos de Monte carlo.

#### Git

[Git](https://git-scm.com/) Es un software libre que permite llevar un apropiado registro y manejo de proyectos. Este crea espacios en el que se pueden guardar distintos estados de los archivos trabajados para poder ver su evoulución o recuperarlos si es necesario.

#### GitHub

[GitHub](https://github.com) Es un página de internet que integra el sistema Git en línea facilitando su uso y el trabajo  compartido.
Será una de las principales herramientas del curso ya que a través de esta se subiran y calificaran las actividades.

##### Métodos para el uso de Git en laterminal
```bash
$ git clone [url] # Permite clonar un repositorio de internet (como de GitHub) al computador.
$ git add --all # Agrega todos los cambios realizados para hacer un commit.
$ git -m commit [Mensaje] # Hace un commit (acuerdo que guarda el estado del proyecto). La opción -m permite mandar el mensaje del commit directamente desde la terminal.
$ git pull origin master # Importa los cambios del proyecto desde el repositorio en línea. Para esto se debió haber clonado un repositorio.
$ git push origin master # Exporta los cambios realizados en el computador al repositorio en línea. Cuidado: El repositorio local debe estar actualizado antes de hacer esto.
$ git log # Muestra el historial de los commits que se han realizado.
```
#### Otros comandos en la terminal
**ssh:** Es un protocolo de redes que permite conectarse a computadores remotamente.
```bash
$ ssh usuario@compufi[1-25].uniandes.edu.co # Se conecta a una de las 25 máquinas de compu-física.
```
**sftp:** Es un protocolo de redes que permite el manejo de archivos en computadores remotos.
```bash
$ sftp usuario@compufi[1-25].uniandes.edu.co
$ ls #Lista los archivos y carpetas del computador remoto.
$ cd carpeta_remota # Cambia la carpeta del computador remoto.
$ get archivo_remoto # Importa un archivo desde el computador remoto.
$ put archivo_local # Exporta un archivo desde el computador local al remoto.
```
**echo:** Permite mostrar un mensaje o el valor de una variable en la terminal.
```bash
$ echo "¡Hola mundo!"
¡Hola mundo!
$ x=12 # Asigna un valor a la variable x.
$ echo $x # $ sirve para llamar el valor de una variable.
12
```
### Segunda clase: 29-Mayo-2015

##### Métodos importantes

| Método | Función |
|--------|--------|
|  **pwd**  | Muestra el directorio o carpeta actual.       |
|   **ls**  | Lista los archivos y subdirectorios del directorio actual |
| **mkdir** *carpeta* | Crea una nueva carpeta con el nombre dado|
| **cd** *carpeta*| C	ambia el directorio actual a la carpeta indicada|
| **rmdir** *carpeta* | Borra la carpeta vacía con nombre indicado|
| **touch** *archivo* | Crea un archivo con nombre indicado si no existe|
| **mv** *archivo1* *archivo2*| Mueve el archivo a otro y permite renombrarlo|
| **cp** *archivo1* *archivo2*| Copia el archivo1 como archivo2|
| **rm** *archivo* | Borra permanentemente un archivo|
| **cat** *archivo* | Muestra en la terminal el contenido de un archivo|
| **tac** *archivo* | Muestra en la terminal el contenido de un archivo al revés|
| **head -n** *archivo* | Muestra las primeras n líneas de un archivo en la terminal|
| **tail -n** *archivo* | Muestra las últimas n líneas de un archivo en la terminal|
| **grep** *patrón* *archivo*| Muestra las líneas del archivo que contienen un patrón o palabra|
| **fold** | Separa textos de acuerdo a argumentos entregados|
| **chmod** +x *script.sh*| Cambia los permisos del archivo para que sea ejecutable|
| **man** *comando* | Presenta el manual de algún comando de la terminal|
| **history** | Presenta el historial de los comandos ejecutados en la terminal|
| **exit** | Cierra la terminal de manera adecuada|

**wc: ** Cuenta el número de líneas, palabras, caráctereso o bytes de un archivo con las siguientes opciones:
- -c: bytes
- -m: caracteres
- -l: líneas
- -w: palabras

```bash
$ wc -c archivo # El número de bytes del archivo.
```
**tar: ** Crea, comprime y descomprime archivos y directorios con las siguientes opciones:
- cvf : Crea un archivo.tar con los archivos solicitados.
- xvf : Descomprime un archivo deseado.
- zcvf: Comprime

```bash
$ tar -xvf compreso.tar.gz #Descomprime el archivo.
```
**wget:** Descarga archivos desde una dirección de Internet.
```bash
$ wget -q dirección.com/documento.doc # -q para que no muestre información del proceso de descarga.
```
**awk: ** Permite manejar partes de documentos que cumplan ciertos requerimientos. También, permite manejar columnas de documentos indicando con la opcion **-F** cuál es su divisor.
```bash
$ awk -F "," '{print $1}' archivo.csv #Imprime la segunda columna de un archivo delimitado por comas.
$ awk -F "," -v var=$varbash '{if(var==condición){Acción}}' archivo.csv # Importa una variable de bash a awk para que pueda ser usada en éste módulo.
```

#### Hands-On1
```bash
$ echo "ejemplo" > ejemplo.txt # Crea un archivo.
$ git add ejemplo.txt # Agrega el archivo al área para hacer commit.
$ git commit -m "Agrego archivo" # Crea el commit.
$ git rm ejemplo.txt # Borra el archivo
$ git commit -m "Borro archivo" # Reporta los cambios al repositorio
$ git log # Muestra los commits que se han realizado.
$ git checkout iddelcommit # Permite revisar el repositorio en el estado del commit indicado
```
##### Git
se obtiene el archivo de /usuarios/homenfs7/j-lizara/Shared/MetodosComputacionales.tgz
```bash
$ tar -xvf MetodosComputacionales.tgz # Descomprime el archivo.
$ cd MetodosComputacionales # Cambia al directorio del repositorio.
$ git log | tail -15 # Imprime las últimas 15 lineas del log permitiendo ver los primeros commits.
```
Con esto se obtiene el id del segundo commit que fue realizado el`Sat Jan 5 23:05:56 2013` con lo que se puede hacer un`checkout` y observar que el tema de la semana 15 en el pénsum fue *Métodos de interferencia Bayesiana*

### Tercera clase: 2-Junio-2015
**curl:** Permite la obtención del código de una dirección web.

```bash
$ curl -s http://dirección.com/ #La opción -s (silence) hace que el programa no muestre información acerca del proceso de obetención del código.
```

**sed: ** Es un editor que permite filtrar y transformar texto. Se comporta de la siguiente forma
```bash
$ sed -e 's/loquesevaareemplazar/porloquesereemplaza/g' archivo # Cambia las palabras/caracteres por el que se desea sin alterar el archivo original. Es decir, el resultado se presenta en la terminal o se redirige.
```
##### Expresiones Regulares Sed
Son usadas para aumentar la eficiencia en múltiples tareas de programación ya que permiten agrupar gran número de casos. A continuación se listan algunas de las usadas en sed de las cuales se puede requerir la opción **-E** para que se lean las expresiones regulares extendidas.

| Expresión | Significado |
|--------|--------|
| **&**  | Se refiere al mismo patrón o palabra encontrada|
| **.**  | Alude a cualquier caracter tantas veces como punto halla|
| **[ ]**| Alude a cualquier caracter o lista dentro de los corcheres|
|**[a-z]**| Se refiere a cualquier letra minúscula|
|**[0-9]**| Alude a cualquier dígito|
|**[^ ]** | Cualquier caracter que no esté dentro de los corchetes|
|**^**| Indíca que está al principio de una línea|
|**$**| Indíca que está al final de una línea|
|**\***| Indíca que la expresión regular anterior se puede repetir varias veces|
|**\\**| Permite usar los caracteres empleados para otras expresiones (\\. \\* \\$ )|
|**\\(\\)**| Permite agrupar condiciones|
|**\\{n\\}**| Indíca el número de veces que se repite una expresión regular anterior|

###### Ejemplo del Hands-on2
```bash
$ sed -E 's/^.... //g' #Busca y elimina 4 caracteres que esten al comiezo de las líneas y continuen con un espacio.
```
##### Pi
```bash
$ curl -s http://pi.karmona.com/ | sed 's/[^0-9]//g' | sed 's/103/3./g' | sed 's/.\{20\}/& \n/g' > PIslices20.dat # Descarga el archivo de los dígitos del número pi, borra todo lo que no sea número, arregla los primeros dígitos y los separa en líneas con 20 caracteres redireccionando el resultado a un nuevo archivo.
```
##### Script Bash
```bash
$ editorausar nombrescript.sh # Crea el archivo del script y lo abre en un editor indicado.
```
Dentro del editor
```bash
#!/bin/bash
# Lo anterior indíca la ruta del lenguaje a usar (Bash)
figlet "GnuPlot" #Adornos
gnuplot -persist << EOF #Permite que la gráfica se mantenga y le envía una serie de comandos.
#!/usr/local/bin/gnuplot -persist
set term qt #Hace que la gráfica se muestre en una ventana externa.
set datafile separator "," # Indica el tipo de separador del archivo.
plot "$1" using $2:$3 with linesp # Plotea los datos según los argumentos entregados.
pause -1
EOF # Termina la serie de comandos.
```
Fuera del editor
```bash
$ chmod +x graficadorGnuplot.sh
$ ./graficadorGnuplot.sh joviansatellites.csv 2 3
```
### Cuarta clase: 3-Junio-2015
#### Gnuplot 2da parte
### Quinta clase: 5-Junio-2015
##### Make
Es un comando de la terminal que permite crear ejecutables a partir de la compilación de archivos escritos en diferentes lenguajes de programación, lo que le da una amplia utilidad en ámbitos académicos y prácticos.
### Sexta clase: 9-Junio-2015
### Séptima clase: 10-Junio-2015
#### Matplotlib
Es una librería de recursos que se integran python para la generación de gráficas, el ploteo y análisis de datos. Es una de las librerías importadas con el comándo mágico %pylab inline
```python
%pylab inline
figure(figsize=(n,n)) #Crea una figúra con dimensiones dadas.
subplot() # Permite dividir la gráfica en varias partes.
plot() #Sirve para plotear datos en dos ejes.
hist() #Sirve para generar histogramas.
xlim(min,max) # Define el rangos del eje x en el que es mostrada la gráfica.
ylim(min,max) # Define el rangos del eje y en el que es mostrada la gráfica.
legend() # Permite la inserción de leyendas en las gráficas.
savefig() # Permite exportar la imágen en varios formatos.
show() # Muestra la gráfica creada.
```
#### Lissajous
```python
%pylab inline

a = [1,1,1,1,1,3,3,3,3,3,5,5,5,5,5,10,10,10,10,10,20,20,20,20,20]
b = [1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5]

delta = pi/8
t = linspace(-pi,pi,300)

figure(figsize=(15,15))

for i in range(25):
    x = sin(a[i] * t + delta)
    y = sin(b[i] * t)
    subplot(5,5,i+1)
    axis('off')
    savefig("Lissajous.png")
    plot(x,y)

show()
```
### Octava clase: 16-Junio-2015

#####Interpolación
Busca unir varios puntos por medio de funciones halladas con distintos métodos.
la función **interp1d** permite interpolar arreglos de puntos en x y y para generar un función de un tipo dado.
```python
from scipy import interpolate
func = interpolate.interp1d(x,y,kind="tipo")
```
Los tipos que recibe este comando son:
- 'linear' : Une los puntos con líneas rectas.
- 'nearest': El valor en un sitio será igual al del punto más cercano.
- 'zero' : El valor de un tramo será el mismo del punto anterior hasta que llegue a un segundo punto.
- 'quadratic' : Une los puntos con funciones polinomiales de órden 2.
- 'cubic' : Une los puntos con funciones polinomiales de órden 3.
- n : Donde n es un entero que indica el órden del polinomio que unirá los puntos.

##### Ajustes

A diferencia de la interpolación, los ajustes buscan una función sencilla cuyos valores tengan la mínima distancia posible con los puntos dados. La librería de Numpy contiene una función llamada **polyfit** que permite hallar las constantes que acompañan la función polinomial resultante como ajuste de unos puntos dados.
```python
import numpy as np
ajuste = np.polyfit(x,y,n) #Donde n es el órden del polinomio para el ajuste.
def func (x): #define la función que maneja el ajuste.
	return ajuste[0]*(x**n) + ajuste[1]*(x**(n-1)) ... + ajuste[n]
```

### Novena clase: 17-Junio-2015
Raices
Git Hub: Ramas
Análisis De fourier

### Décima Clase: 19-Junio-2015

### 23-Junio

##### Solar cycle

```python
%pylab inline
archivo = genfromtxt("monthrg.dat")
years = array(archivo[:,0] + archivo[:,1]/12)
means = array(archivo[:,3])

x = []
y = []

for i in range (len(years)):
    if means[i] > 0 and years[i] >= 1800 and len(x) < 2048:
        x.append(years[i])
        y.append(means[i])

N = 2**11 
fr = 1/(x[-1]-x[1])
dt = 1./fr / N       
trans = fft.fft(y)
freq = fftfreq(N, dt)

trans[abs(freq) > 0.2] = 0

y2 = ifft (trans)       
figure(figsize= (8,8))
plot(x,y, "cyan")
plot(x, real(y2), color = "red")
#xlim (1800,2000)
ylim (0,250)
show()
```

y junto a esto se grafican la frecuencias y se observa que los picos están cercanos a 0.9 lo que indica que los ciclos solares se llevan a cabo cerca de los **11** años. 

```python
figure() 
plot (freq, abs(trans))
xlim(-0.2,0.2)
show()
```

### Onceava clase: 24-Junio-2015
Integración numérica.
**Trapezoidal:** Uniendo valores de F(x) por líneas rectas en distintos espacios.
**Polinomial:** Se unen valores de F(x) empleando interpolaciones con polinomios de 2do grado.
**De alguien (Lagrange):** La cual elige las x optimas para interpolar con polinomios de grado *n-1*.
- Grandshmith--> ortonormalización

**Smopy: ** Es un [módulo](https://pypi.python.org/pypi/smopy/0.0.3) de python que permite la incorporación de mapas a los trabajos, así como el ploteo de coordenadas sobre estos. [(Ver más información)](https://github.com/rossant/smopy)

![smopy](https://raw.githubusercontent.com/niveku/MC/master/Talleres/Taller6/Recorrido.png)
```python
import smopy  #importa el módulo.
# Crea el mapa usando internet, las coordenadas del rectángulo deseado y el zoom (z) con el que se desea que aparezca.
map = smopy.Map(min_latitud,min_longitud,max_latitud, max_longitud)), z = 15)
# Permite cambiar coordenadas a pixeles para poder plotearlas. También acepta listas.
x, y = map.to_pixels(latitud, longitud)
map.show_mpl(figsize=(8, 8)) #Crea el mapa como figúra de Matplotlib con unas dimensiones dadas.
plot(x,y) #Plotea el recorrido usando las posiciones en pixeles como un comando de Matplotlib.
show()
```
### Doceava clase: 26-Junio-2015

### Treceava clase: 30-Junio-2015

Ecuaciones diferenciales de método adaptativo 
Adam-Bashfort:Encuentra la interpolación de derivadas anteriores y extrapola la solución