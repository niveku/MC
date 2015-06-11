#!/bin/bash
#sed 's/['$1']/'$2'/g' $3 #Usa las variables de bash de la entrada para reemplazar las cadenas o caracteres de un archivo.#
#sed -r 's/('$1')('$2')/\2\1/g' #Este las intercambia pero no todas.
sed -e 'y/'$1''$2'/'$2''$1'/' $3 #Este si intercambia todas!
