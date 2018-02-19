# OPTIMIZACION CSS (UNCSS) CON DOCKER

UNCSS es una estupenda herramienta de Node,  que nos permite optimizar css, lee todos los archivos css de una pagina y crea uno nuevo solo con las clases que se están utilizando.

El Github del proyecto uncss [Aqui](https://github.com/uncss/uncss)

He metido este proyecto en un contenedor docker para no tener que instalarlo en nuestro ordenador.

## Construir la imagen

Clonamos el este repositorio y entramos dentro.

Primero construirmos la imagen docker con nombre para poder usarla desde cualquier carpeta

    docker build --no-cache -t myuncss .

## Arrancar el Contenedor

Nos dirigirnos a la carpeta donde tenemos el html y el css y arrancar

    docker run -it --rm --name=uncss -v $PWD:/home/node/app myuncss /bin/bash

al ejecutar esta sentencia estamos dentro del contenedor ya podemos utilizar Uncss.

### UnCSS (optimizar)

Para eliminar css que no se usa del archivo login.html y crea el archivo login.css

    uncss login.html > login.css
