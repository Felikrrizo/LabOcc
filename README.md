# Lab Org. y Arq. de Computadoras

* Configuración de pantalla: `640x480` pixels, formato `ARGB` 32 bits.
* El registro `X0` contiene la dirección base del FrameBuffer (Pixel 1).
* El código de cada consigna debe ser escrito en el archivo _app.s_.
* El archivo _start.s_ contiene la inicialización del FrameBuffer **(NO EDITAR)**, al finalizar llama a _app.s_.
* El código de ejemplo pinta toda la pantalla un solo color.

## Estructura

* **[app.s](app.s)** Este archivo contiene a apliación. Todo el hardware ya está inicializado anteriormente.
* **[start.s](start.s)** Este archivo realiza la inicialización del hardware.
* **[Makefile](Makefile)** Archivo que describe como construir el software _(que ensamblador utilizar, que salida generar, etc)_.
* **[memmap](memmap)** Este archivo contiene la descripción de la distribución de la memoria del programa y donde colocar cada sección.

* **README.md** este archivo.

## Uso

El archivo _Makefile_ contiene lo necesario para construir el proyecto.
Se pueden utilizar otros archivos **.s** si les resulta práctico para emprolijar el código y el Makefile los ensamblará.

**Para correr el proyecto ejecutar**

```bash
$ make runQEMU
```
Esto construirá el código y ejecutará qemu para su emulación.

Si qemu se queja con un error parecido a `qemu-system-aarch64: unsupported machine type`, prueben cambiar `raspi3` por `raspi3b` en la receta `runQEMU` del **Makefile** (línea 23 si no lo cambiaron).

**Para correr el gpio manager**

```bash
$ make runGPIOM
```

Ejecutar *luego* de haber corrido qemu.

# Lab Org. y Arq. de Computadoras

* Configuración de pantalla: `640x480` pixels, formato `ARGB` 32 bits.
* El registro `X0` contiene la dirección base del FrameBuffer (Pixel 1).
* El código de cada consigna debe ser escrito en el archivo _app.s_.
* El archivo _start.s_ contiene la inicialización del FrameBuffer **(NO EDITAR)**, al finalizar llama a _app.s_.
* El código de ejemplo pinta toda la pantalla un solo color.

## Estructura

* **[apps.s](app.s)** Este archivo contiene la apliación. Todo el hardware ya está inicializado anteriormente.
* **[dia.s](dia.s)** Este archivo contiene el codigo implementado para la creacion de la escena de dia.
* **[noche.s](noche.s)** Este archivo contiene el codigo implementado para la creacion de la escena de noche.
* **[funciones.s](funciones.s)** Contiene las funciones de creacion, dibujado y pintado de formas utulizadas. 
* **[animaciones.s](animaciones.s)** Este archivo contiene toda el codigo implementado necesario para realizar las animaciones presentadas en el laboratorio.
* **[lluvia.s](lluvia.s)** Este archivo contiene la funcion encargada de dibujar lluvia en las esecenas.
* **[ovni.s](ovni.s)**  Este archivo contiene la animacion de un ovni para utilizar sobre las escenas.
* **[start.s](start.s)** Este archivo realiza la inicialización del hardware.
* **[Makefile](Makefile)** Archivo que describe como construir el software _(que ensamblador utilizar, que salida generar, etc)_.
* **[memmap](memmap)** Este archivo contiene la descripción de la distribución de la memoria del programa y donde colocar cada sección.

* **README.md** este archivo.

## Uso

**Para correr el proyecto ejecutar**

```bash
$ make runQEMU
```
Esto construirá el código y ejecutará qemu para su emulación.

**Para correr el gpio manager**

```bash
$ make runGPIOM
```

Ejecutar *luego* de haber corrido qemu.

El QEMU es completamente negro hasta presionar alguna tecla de printeo de escena.

En la terminal donde se corre el comando runGPIOM podemos interactuar con las teclas w,a,s,d y espacio.

## Como usar escenas ##
Printear escenas:
'w' : Escena de dia. 
's' : Escena de noche.

## Eventos en escenas ##
Interacciones con escenas:
Para la escena de dia podemos crear un evento derrume 
(solo en la escena de dia):
'a' : Iniciar derrumbe de edificio rojo.

Para la escena de noche tenemos dos tipos de interacciones 
(solo en la escena de noche):
'd' : Iniciar evencto lluvia.
'espacio' : Iniciar evento ovni.