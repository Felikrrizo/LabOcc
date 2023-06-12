.equ SCREEN_WIDTH, 		640 //
.equ SCREEN_HEIGH, 		480 //
.equ BITS_PER_PIXEL,  	32 


.globl main
main:
	// X0 contiene la direccion base del framebuffer
 	mov x20, x0	// Save framebuffer base address to x20	
	//---------------- CODE HERE ------------------------------------
	movz x5, 0x00, lsl 16
	movk x5, 0xffff, lsl 00

	bl FondoRor
	mov x19, 4 				//bits per pixel 
	//en x20 se guarda la posicion inicial de la pantalla
	mov x21 , SCREEN_WIDTH	
	mov x22 , SCREEN_HEIGH
//////////////////////////////////////DIBUJANDO LA CONSOLA////////////////////////////////////////////////////////////////

	mov x1, 410				//seteo tamanio   (alto)
	mov x2, 300 			// seteo tamanio  (largo)
	movz x5, 0xff, lsl 16	//color
	movk x5, 0xff66, lsl 00	//color
	mov x3, 40				//EJE Y
	movz x4, 170			//EJE X
	bl posicion
	BL RectanguloPintado

	mov x1, 270	      		//seteo tamanio   (alto)
	mov x2, 240				// seteo tamanio  (largo)
	movz x5, 0xff, lsl 16	//color 
	mov x3, 75
	movz x4, 200
	mov x19, 4 				//bits per pixel 
	movz x5, 0xff, lsl 0
	bl posicion
	bl RectanguloDegrade

 	mov x1, 10	      		//seteo tamanio   (alto)
	mov x3, 185				//EJE Y
	movz x4, 203			//EJE X
	movz x5, 0xff, lsl 16
	bl LetraT
	bl LetraE
	bl LetraT2
	bl LetraR
	bl LetraI
	bl LetraS

 	mov x1, 20
	mov x3, 303
	mov x4, 357
	bl Sblock
	mov x3, 303	
	mov x4, 378	
	bl Lblock
	mov x3, 283	
	mov x4, 220	
	bl Tblock
	mov x3, 263	
	mov x4, 300	
	bl Iblock

	mov x3, 303			
	mov x4, 199			
	bl Oblock

	movz x5, 0x75, lsl 16
	movz x5, 0x7A7E, lsl 0
	mov x1, 18
	mov x3, 434
	mov x4, 320
	bl trianguloInvertido

	movz x5, 0x75, lsl 16
	movz x5, 0x7A7E, lsl 0
	mov x1, 18
	mov x3, 356
	mov x4, 320
	bl trianguloNormal

	movz x5, 0x75, lsl 16
	movz x5, 0x7A7E, lsl 0
	mov x1, 18
	mov x3, 395
	mov x4, 360
	bl trianguloDerecho
	
	movz x5, 0x75, lsl 16
	movz x5, 0x7A7E, lsl 0
	mov x1, 18
	mov x3, 395
	mov x4, 280
	bl trianguloIzquierdo
////////////////////////////////////FUNCIONES////////////////////////////////////////////////
b end
trianguloInvertido:
///////////////////////////TRIANGULO INVERTIDO //////////////////////////////////////////////
sub sp,sp, #8  			
str x30,[sp,#0]  		
	BL posicion
	mov x14, x1     	     	//seteo un contador de cuantas veces voy a ejecutar el loop
	lsr x14, x14, 1				//divido por dos (la mitad del tamanio del triangulo) 
 looppintar:
//----------------------------linea vertical izquierda -------------------------------------
	mov x15, x1	
lineaIzquierda:
	stur w5, [x0]
	madd X7, x21, X19, x19
	sub x0, x0, x7
	sub x15,x15,1				//decremento el count del eje Y
	cbnz x15,lineaIzquierda	
//----------------------------linea de arriba --------------------------------------------
	mov x15, x1	
	lsl x15, x15, 1   			//el doble de donde estaba antes
lineaArriba:
	stur w5, [x0]
	add x0,x0,4
	sub x15,x15,1				//decremento el count del eje X
	cbnz x15,lineaArriba
//-------------------------linea medida vertical derecha  ------------------------------
	mov x15, x1
lineaDerecha:
	stur w5, [x0]
	msub x7,x21, x19, x19
	sub x0, x0, x7
	sub x15,x15,1				//decremento el count del eje Y
	cbnz x15,lineaDerecha
//--------------------------------------------------------------------------------------
	msub x0, x21, x19, x0      	// cambio la posicion
	sub x1, x1, 2          		//dismunuyo el tamaño 
	sub x14, x14, 1				//disminuyo el contador de cuantas veces voy a ejecutar el loop
	cmp x14, 0
	b.ne looppintar
//---------------------------------------------------------------------------------------
	stur w5, [x0]				//pinto el ultimo pixel del medio que quedo sin pintar */
	msub x0, x21, x19, x0 		//muevo el x0 al lugar del ultimo pixel que quedo sin pintar
	stur w5, [x0]				//pinto el ultimo pixel del medio que quedo sin pintar */
ldr x30,[sp,#0]  			
add sp,sp, #8  				
	ret
///////////////////////////////////FIN TRIANGULO INVERTIDO /////////////////////////////////////////////
trianguloNormal:
///////////////////////////TRIANGULO NORMAL //////////////////////////////////////////////
sub sp,sp, #8  			
str x30,[sp,#0]  		
	BL posicion
	mov x14, x1     	     //seteo un contador de cuantas veces voy a ejecutar el loop
	lsr x14, x14, 1			//divido por dos (la mitad del tamanio del triangulo)
 
 looppintar1:
//----------------------------linea vertical izquierda -------------------------------------
	mov x15, x1

lineaIzquierda1:

	stur w5, [x0]
	msub x7,x21, x19, x19		//al indice lo aumento en 640posiciones(4*640)
	sub x0, x0, x7				//al indice lo resto en 640 posiciones(4*640) y lo corro 1 posicion (4*1) a la izquierda
	sub x15,x15,1				//decremento el count del eje Y
	cbnz x15,lineaIzquierda1

//----------------------------linea de abajo --------------------------------------------
	mov x15, x1
	lsl x15, x15, 1
lineaAbajo1:
	stur w5, [x0]
	add x0,x0,4
	sub x15,x15,1
	cbnz x15,lineaAbajo1

//-------------------------linea medida vertical derecha  ------------------------------
	mov x15, x1
lineaDerecha1:
	stur w5, [x0]
	madd x7, x21, x19, x19
	sub x0,x0, x7
	sub x15,x15,1
	cbnz x15,lineaDerecha1
//--------------------------------------------------------------------------------------
	madd x0, x21, x19, x0   	// cambio la posicion
	sub x1, x1, 2          		//dismunuyo el tamaño 
	sub x14, x14, 1				//disminuyo el contador de cuantas veces voy a ejecutar el loop
	cmp x14, 0
	b.ne looppintar1
//---------------------------------------------------------------------------------------
	stur w5, [x0]			//pinto el ultimo pixel del medio que quedo sin pintar */
	msub x0,x21,x19,x0		//muevo el x0 al lugar del ultimo pixel que quedo sin pintar
	stur w5, [x0]			//pinto el ultimo pixel del medio que quedo sin pintar */

ldr x30,[sp,#0]  
add sp,sp, #8  
	ret
/////////////////////////////////// FIN TRIANGULO NORMAL /////////////////////////////////////////////
trianguloDerecho:
///////////////////////////TRIANGULO DERECHO //////////////////////////////////////////////
sub sp,sp, #8  			
str x30,[sp,#0]  		
	BL posicion
	mov x14, x1     	    //seteo un contador de cuantas veces voy a ejecutar el loop
	lsr x14, x14, 1			//divido por dos (la mitad del tamanio del triangulo)
looppintarDerecho:
//----------------------------linea vertical izquierda -------------------------------------
	mov x15, x1
lineaArribaDerecha:
	stur w5, [x0]
	madd x7,x21,x19,x19 
	sub x0,x0,x7
	sub x15,x15,1
	cbnz x15,lineaArribaDerecha
//----------------------------linea de arriba --------------------------------------------
	mov x15, x1
	lsl x15, x15, 1
lineaIzquierdaDerecha:
	stur w5, [x0]
	madd x0,x21,x19,x0
	sub x15,x15,1
	cbnz x15,lineaIzquierdaDerecha
//-------------------------linea medida vertical derecha  ------------------------------
	mov x15, x1
lineaAbajoDerecha:
	stur w5, [x0]
	msub x7,x21,x19,x19
	add x0, x0, x7
	sub x15,x15,1
	cbnz x15,lineaAbajoDerecha
//--------------------------------------------------------------------------------------
	sub x0, x0, 4       	// cambio la posicion
	sub x1, x1, 2          	//dismunuyo el tamaño 
	sub x14, x14, 1			//disminuyo el contador de cuantas veces voy a ejecutar el loop
	cmp x14, 0
	b.ne looppintarDerecho
//---------------------------------------------------------------------------------------
	stur w5, [x0]			//pinto el ultimo pixel del medio que quedo sin pintar */
	msub x0,x21,x19,x0		//muevo el x0 al lugar del ultimo pixel que quedo sin pintar
	stur w5, [x0]			//pinto el ultimo pixel del medio que quedo sin pintar */
ldr x30,[sp,#0]  
add sp,sp, #8  
	ret
///////////////////////////////////FIN TRIANGULO DERECHO /////////////////////////////////////////////
trianguloIzquierdo:
///////////////////////////TRIANGULO IZQUIERDO //////////////////////////////////////////////
sub sp,sp, #8  			
str x30,[sp,#0]  		
	BL posicion
	mov x14, x1     	    //seteo un contador de cuantas veces voy a ejecutar el loop
	lsr x14, x14, 1			//divido por dos (la mitad del tamanio del triangulo)
 looppintarIzquierdo:

//----------------------------linea vertical izquierda -------------------------------------
	mov x15, x1
lineaArribaIzquierda:
	stur w5, [x0]
	msub x7,x21,x19,x19 
	add x0,x0,x7
	sub x15,x15,1
	cbnz x15,lineaArribaIzquierda
//----------------------------linea de arriba --------------------------------------------
	mov x15, x1	
	lsl x15, x15, 1
lineaDerechaIzquierda:
	stur w5, [x0]
	madd x0,x21,x19,x0
	sub x15,x15,1
	cbnz x15,lineaDerechaIzquierda
//-------------------------linea medida vertical derecha  ------------------------------
	mov x15, x1
lineaAbajoIzquierdo:
	stur w5, [x0]
	madd x7,x21,x19,x19
	sub x0,x0, x7
	sub x15,x15,1
	cbnz x15,lineaAbajoIzquierdo
//--------------------------------------------------------------------------------------
	add x0, x0, 4       	// cambio la posicion
	sub x1, x1, 2          	//dismunuyo el tamaño 
	sub x14, x14, 1			//disminuyo el contador de cuantas veces voy a ejecutar el loop
	cmp x14, 0
	b.ne looppintarIzquierdo
//---------------------------------------------------------------------------------------
	stur w5, [x0]			//pinto el ultimo pixel del medio que quedo sin pintar
	msub x0,x21,x19,x0		//muevo el x0 al lugar del ultimo pixel que quedo sin pintar
	stur w5, [x0]			//pinto el ultimo pixel del medio que quedo sin pintar
ldr x30,[sp,#0]  
add sp,sp, #8  
	ret
///////////////////////////////////FIN TRIANGULO IZQUIERDO /////////////////////////////////////////////
///////////////////////CUADRADO/rectangulo con relleno///////////////////
RectanguloPintado:
mov x14, x1 				//salvo en x14 el alto 
siguiente:
	mov x15, x2        		//salvo en x15 el largo
raya:
	stur w5,[x0]	   		// Seteo el color del pixel N
	add x0,x0,4	   			// proximo pixel
	sub x15,x15,1	   		// decrement X counter
	cbnz x15, raya	 		//si no termine de pintar la primera raya pinto el proximo pixel 
	sub x14, x14, 1 		//decrement y counter 
	msub x0, x19, x2, x0    //vuelvo al principio de la linea x0 - x2 * 4	= x0	
	madd x0, x21, x19, x0 	//muevo el puntero al inicio de la proxima linea (640*4+x0)=x0
	cbnz x14, siguiente
	ret
///////////////////////////////////SETEO POSICION////////////////////////////////////////////
posicion:
sub sp,sp, #16
str x3,[sp,#0]
str x4,[sp,#8]
	mov x21 , SCREEN_WIDTH	//seteo x21 con mi largo de pantalla	

	mov x0, x20				//seteo x0 en primer pixel
	mov x13, xzr			//seteo el x13 en vacio x13 registro auxiliar
	madd x13, x3, x21, x4	//en x13 guardo el resultado de 640*x3 (coord de y) + x
	lsl x13, x13, 2         //multiplico mi resultado anterior por lo que ocupa cada pixel (4)
	add x0,x0, x13			//guardo en x0 lo que calcule en mi registro aux

ldr x4,[sp,#8]  
ldr x3, [sp,#0] 
add sp,sp, #16  
	ret
/////////////////////////////////FIN POSICION////////////////////////////////////////////////
FondoRor: 
// AHORA VOY  HACER UN PATRON DE COLORES CON ROR (retroalimentacion con lsl)
   	mov x0, x20                		// vuelvo a guardar el inicio del arreglo en x0
   	movz x5, 0x4F3C, lsl 0 

	mov x14, SCREEN_HEIGH         	// Y Size
	sub x14, x14, 1  
loop1:
	mov x15, SCREEN_WIDTH         	// X Size
	ror w5, w5,  #30  				//si cambio el numero desp de # cambio el fondo
loop0:
	stur w5,[x0]	   				// Set color of pixel N
	add x0,x0,4	   					// Next pixel
	sub x15,x15,1	   				// decrement X counter
	cbnz x15,loop0	   				// If not end row jump
	sub x14,x14,1	   				// Decrement Y counter
	cbnz x14, loop1	   				// if not last row, jump
	ret
///////////////////////////////////////////////////////////////////////////////////
RectanguloDegrade:

mov x14, x1 				//salvo en x14 el alto 
lsr x14, x14, 1 			//divido en 2 

siguiente2:
	mov x15, x2        		//salvo en x15 el largo
	add x5, x5, 1
raya2:
	stur w5,[x0]
	add x0,x0,4	   			// proximo pixel
	sub x15,x15,1	   		// decrement X counter
	cbnz x15, raya2	 		//si no termine de pintar la primera raya pinto el proximo pixel 
	sub x14, x14, 1 		//decrement y counter 
	msub x0, x19, x2, x0    //vuelvo al principio de la linea x0 - x2 * 4	= x0	
	madd x0, x21, x19, x0 	//muevo el puntero al inicio de la proxima linea (640*4+x0)=x0
	cbnz x14, siguiente2
//la mitad de la pantalla
mov x14, x1 				//salvo en x14 el alto 
lsr x14, x14, 1 			//divido en 2 
siguiente3:
	mov x15, x2        		//salvo en x15 el largo
	sub x5, x5, 1
raya3:
	stur w5,[x0]	   		// Seteo el color del pixel N
	add x0,x0,4	   			// proximo pixel
	sub x15,x15,1	  	 	// decrement X counter
	cbnz x15, raya3	 		//si no termine de pintar la primera raya pinto el proximo pixel 
	sub x14, x14, 1 		//decrement y counter 
	msub x0, x19, x2, x0    //vuelvo al principio de la linea x0 - x2 * 4	= x0	
	madd x0, x21, x19, x0 	//muevo el puntero al inicio de la proxima linea (640*4+x0)=x0
	cbnz x14, siguiente3

	ret
///////////////////////////////////////////////////////////////////////////////////////////////////
////solo llamar con tamaños pares//////
cuadradito:
sub sp,sp, 40  				// Reserve space for registers and after Store Registers in stack
str x5, [sp, #32]
str x3, [sp,#24]
str x4, [sp,#16]
str x1, [sp, #8]
str x30,[sp,#0]


	mov x14, 2				// x14 = 2 ancho del color oscuro
	mov x2, x1	
	sub x2, x2, 2   		// guardo el tamaño que voy a usar para llamar al rectangulo

 loop15:
	mov x15, x1 
	madd x0, x21, x19 ,x0
	add x0, x0, 4
 
// hacer el cuadrado por lineas
loop11:
	stur w5, [x0]
	add x0,x0, 2560	
	sub x15,x15,1
	cbnz x15,loop11
//-----------------linea medida horizontal inferior ---------
	mov x15, x1
loop12:
	stur w5, [x0]
	add x0,x0,4
	sub x15,x15,1
	cbnz x15,loop12
//-------------linea medida vertical derecha ------------------
	mov x15, x1
loop13:
	stur w5, [x0]
	sub x0,x0, 2560
	sub x15,x15,1
	cbnz x15,loop13
//-----------------linea medida horizontal sup------------
	mov x15, x1

loop14:
	stur w5, [x0]
	sub x0,x0,4
	sub x15,x15,1
	cbnz x15,loop14

	sub x14, x14, 1
 	sub x1, x1, 2

	cbnz x14, loop15 

 	mov x5,x6 
	mov x1,x2 
	//rectangulo pintado
	mov x14, x1
siguiente4:
	mov x15, x2
raya4:
	stur w5,[x0]
	add x0,x0,4	
	sub x15,x15,1
	cbnz x15, raya4
	sub x14, x14, 1
	msub x0, x19, x2, x0
	madd x0, x21, x19, x0
	cbnz x14, siguiente4
	mov x6, x5

ldr x5, [sp,#0]
ldr x1, [sp,#8]
ldr x4, [sp,#16]
ldr x3, [sp,#24]
ldr x5, [sp,#32]
add sp,sp, 40

	ret
/////////////////////////////////////////////////////////////////////////////////////////////////////
Tetris:
//////////////////////////////////////////////////////////////////////////////////////////////////////
LetraT:
	sub sp,sp, #8  			// Reserve space for registers
    str x30,[sp,#0]  		// Store Register X30 in stack

movz x6, 0x1F00, lsl 00	//color claro 	F22B00 
movk x6, 0xAF, lsl 16
movz x5, 0xD6, lsl 16	// color oscuro

// x3 corresponde al eje y x4 al eje x
bl posicion
BL cuadradito

add x4, x4, x1
bl posicion 
bl cuadradito

add x4,x4,x1
bl posicion
bl cuadradito

add x3, x3, x1		
sub x4, x4, 10
bl posicion 
bl cuadradito

add x3, x3, x1
bl posicion 
bl cuadradito   

add x3, x3, x1
bl posicion 
bl cuadradito   

add x3,x3,x1
bl posicion 
bl cuadradito  

sub x3, x3, 40
add x4, x4, 30		//los pongo en las posiciones para empezar la otra letra

	ldr x30,[sp,#0]  // Restore X30 value from stack
    add sp,sp, #8  // Restore SP to initial position
ret
/////////////////////////////////////////////////////////////////////////////////////////////////////
LetraE:
	sub sp,sp, #8  				// Reserve space for registers
    str x30,[sp,#0]  			// Store Register X30 in stack

	movz x6, 0xf3, lsl 16		//color oscuro   F35D00
	movk x6, 0x5d00, lsl 00 	//color oscuro
	movz x5, 0xc2, lsl 16   	//color claro  C24A00
	movk x5, 0x4a00, lsl 00		//color claro

bl posicion
BL cuadradito

add x4, x4, x1
bl posicion 
bl cuadradito

add x4, x4, x1
bl posicion
bl cuadradito

add x3, x3,x1
sub x4,x4, x1
sub x4,x4, x1
bl posicion 
bl cuadradito

add x3, x3,x1
add x4, x4, x1
bl posicion 
bl cuadradito

sub x4,x4,x1
bl posicion 
bl cuadradito   

add x3,x3,x1
bl posicion 
bl cuadradito   

add x3,x3,x1
bl posicion 
bl cuadradito   

add x4,x4,x1
bl posicion 
bl cuadradito

add x4,x4,x1
bl posicion
bl cuadradito

sub x3, x3, 40 
add x4, x4, 20

ldr x30,[sp,#0]  		// Restore X30 value from stack
add sp,sp, #8  			// Restore SP to initial position
ret
//////////////////////////////////////////////////////////////////////////////////////
LetraT2:
	sub sp,sp, #8  				// Reserve space for registers
    str x30,[sp,#0]  			// Store Register X30 in stack

	movz x6, 0xca, lsl 16		//color oscuro   CAB100
	movk x6, 0xb100, lsl 00 	//color oscuro
	movz x5, 0xf3, lsl 16   	//color claro  F3D600
	movk x5, 0xd600, lsl 00		//color claro

bl posicion
BL cuadradito

add x4, x4, x1
bl posicion 
bl cuadradito

add x4, x4, x1
bl posicion
bl cuadradito

add x3, x3,x1
sub x4,x4, x1
bl posicion 
bl cuadradito

add x3, x3,x1
bl posicion 
bl cuadradito
 
add x3,x3,x1
bl posicion 
bl cuadradito   

add x3,x3,x1
bl posicion 
bl cuadradito   

sub x3, x3, 40
add x4, x4, 30
	ldr x30,[sp,#0]  	// Restore X30 value from stack
    add sp,sp, #8  		// Restore SP to initial position
ret
//-------------------------------------------------------------///////////////////////////////////////////////////////////////

LetraR:
	sub sp,sp, #8  				// Reserve space for registers
    str x30,[sp,#0]  			// Store Register X30 in stack

	movz x6, 0x6f, lsl 16		//color oscuro   6FA700
	movk x6, 0xa700, lsl 00 	//color oscuro
	movz x5, 0x8d, lsl 16   	//color claro  8DD300
	movk x5, 0xd300, lsl 00		//color claro

bl posicion
BL cuadradito

add x4, x4, x1
bl posicion 
bl cuadradito

add x3, x3, x1
add x4, x4, x1
bl posicion 
bl cuadradito

add x3, x3, x1
sub x4, x4, x1
bl posicion 
bl cuadradito

add x3, x3, x1
add x4, x4, x1
bl posicion 
bl cuadradito

add x3, x3, x1
bl posicion 
bl cuadradito

sub x4,x4,x1
sub x4,x4,x1
bl posicion 
bl cuadradito   

sub x3,x3,x1
bl posicion 
bl cuadradito   

sub x3, x3,x1
bl posicion 
bl cuadradito

sub x3, x3,x1
bl posicion 
bl cuadradito

sub x3, x3, x1
bl posicion
bl cuadradito

add x4, x4, 40
	ldr x30,[sp,#0]  		// Restore X30 value from stack
    add sp,sp, #8  			// Restore SP to initial position
ret
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
LetraI:
	sub sp,sp, #8  				// Reserve space for registers
    str x30,[sp,#0]  			// Store Register X30 in stack

	movz x6, 0xc3e1, lsl 00   	//color oscuro  00C3E1
	movz x5, 0x96ad, lsl 00 	//color claro	0096AD

bl posicion
BL cuadradito

add x4, x4, x1
bl posicion
BL cuadradito

add x4, x4, x1
bl posicion
BL cuadradito

sub x4, x4, x1
add x3, x3, x1
bl posicion 
bl cuadradito

add x3, x3, x1
bl posicion 
bl cuadradito

add x3, x3, x1
bl posicion 
bl cuadradito

add x3, x3, x1
sub x4, x4, x1
bl posicion 
bl cuadradito

add x4, x4, x1
bl posicion 
bl cuadradito

add x4, x4, x1
bl posicion 
bl cuadradito

sub x3, x3, 40
add x4, x4, 30

	ldr x30,[sp,#0]  		// Restore X30 value from stack
    add sp,sp, #8  			// Restore SP to initial position
ret
///////////////////////////////////////////////////////////////////////////////////////////////////
LetraS:
	sub sp,sp, #8  				// Reserve space for two registers
    str x30,[sp,#0]  			// Store Register X30 in stack

	movz x6, 0x5b, lsl 16		//color oscuro   5B00AB
	movk x6, 0x00ab, lsl 00 	//color oscuro
	movz x5, 0x85, lsl 16   	//color claro  8500FA
	movk x5, 0x00fa, lsl 00		//color claro

bl posicion
BL cuadradito

add x4,x4, x1
bl posicion
BL cuadradito

add x3, x3, x1
sub x4,x4, x1
sub x4,x4, x1
bl posicion 
bl cuadradito

add x3, x3, x1
add x4, x4, x1
bl posicion 
bl cuadradito

add x3, x3, x1
add x4, x4, x1
bl posicion 
bl cuadradito

add x3, x3, x1
sub x4,x4, x1
sub x4,x4, x1
bl posicion 
bl cuadradito

add x4, x4, x1
bl posicion 
bl cuadradito

sub x3,x3, 40

	ldr x30,[sp,#0]  	// Restore X30 value from stack
    add sp,sp, #8  		// Restore SP to initial position
ret

/////////////////////////////////////////////////////////////////////////////////////
Tblock:
	sub sp,sp, #8  				// Reserve space for two registers
    str x30,[sp,#0]  			// Store Register X30 in stack


	movz x5, 0x33a0, lsl 00   	//color oscuro  8933A0
	movk x5, 0x89, lsl 16 		//color oscuro	
	movz x6, 0x40ff, lsl 00 	//color claro	D740FF
	movk x6, 0xd7, lsl 16 		//color claro	

bl posicion
BL cuadradito

add x4, x4, x1
bl posicion
BL cuadradito

add x4, x4, x1
bl posicion
BL cuadradito

sub x4, x4, x1
add x3, x3, x1
bl posicion 
bl cuadradito
sub x3, x3, x1

	ldr x30,[sp,#0]  	// Restore X30 value from stack
    add sp,sp, #8  		// Restore SP to initial position
ret
////////////////////////////////////////////////////////////////////////////////////////////
Oblock:
	sub sp,sp, #8  				// Reserve space for two registers
    str x30,[sp,#0]  			// Store Register X30 in stack

	movz x5, 0xca, lsl 16		//color oscuro   CAB100
	movk x5, 0xb100, lsl 00 	//color oscuro
	movz x6, 0xf3, lsl 16   	//color claro  F3D600
	movk x6, 0xd600, lsl 00		//color claro

bl posicion
BL cuadradito

add x4, x4, x1
bl posicion 
bl cuadradito

add x3, x3, x1
bl posicion 
bl cuadradito

sub x4, x4, x1
bl posicion 
bl cuadradito

sub x4, x4, 20
sub x3, x3, 10 

	ldr x30,[sp,#0]  	// Restore X30 value from stack
    add sp,sp, #8  		// Restore SP to initial position
ret
//////////////////////////////////////////////////////////////////////////////////////////
Sblock:
	sub sp,sp, #8  				// Reserve space for two registers
    str x30,[sp,#0]  			// Store Register X30 in stack

	movz x5, 0x6f, lsl 16		//color oscuro   6FA700
	movk x5, 0xa700, lsl 00 	//color oscuro
	movz x6, 0x8d, lsl 16   	//color claro  8DD300
	movk x6, 0xd300, lsl 00		//color claro

bl posicion
BL cuadradito

add x4,x4, x1
bl posicion
BL cuadradito

add x3, x3, x1
sub x4,x4, x1
sub x4,x4, x1
bl posicion 
bl cuadradito

add x4, x4, x1
bl posicion 
bl cuadradito

	ldr x30,[sp,#0]  	// Restore X30 value from stack
    add sp,sp, #8  		// Restore SP to initial position
ret
////////////////////////////////////////////////////////////////////////////////////////////////
Zblock:
	sub sp,sp, #8  			// Reserve space for two registers
    str x30,[sp,#0]  		// Store Register X30 in stack

	movz x5, 0x1F00, lsl 00	//color claro 	F22B00 
	movk x5, 0xAF, lsl 16 	//
	movz x6, 0xD6, lsl 16	// color oscuro

bl posicion
BL cuadradito

add x4, x4, x1
bl posicion 
bl cuadradito

add x3, x3, x1
bl posicion 
bl cuadradito

add x4, x4, x1
bl posicion 
bl cuadradito

sub x4, x4, 30
sub x3, x3, 10 

	ldr x30,[sp,#0]  		// Restore X30 value from stack
    add sp,sp, #8  			// Restore SP to initial position
ret
//-----------------------------------------------------------------------------------------------------------
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
Iblock:
	sub sp,sp, #8  				// Reserve space for two registers
    str x30,[sp,#0]  			// Store Register X30 in stack

	movz x6, 0xc3e1, lsl 00   	//color oscuro  00C3E1
	movz x5, 0x96ad, lsl 00 	//color claro	0096AD

bl posicion
BL cuadradito

add x3, x3, x1
bl posicion
BL cuadradito

add x3, x3, x1
bl posicion
BL cuadradito

add x3, x3, x1
bl posicion
BL cuadradito
sub x3, x3, 40

	ldr x30,[sp,#0]  	// Restore X30 value from stack
    add sp,sp, #8  		// Restore SP to initial position
ret 
/////////////////////////////////////////////////////////////////////////////////////////////////
Jblock:
	sub sp,sp, #8  				// Reserve space for two registers
    str x30,[sp,#0]  			// Store Register X30 in stack

	movz x5, 0x5b, lsl 16		//color oscuro   5B00AB
	movk x5, 0x00ab, lsl 00 	//color oscuro
	movz x6, 0x85, lsl 16   	//color claro  8500FA
	movk x6, 0x00fa, lsl 00		//color claro

bl posicion
BL cuadradito

add x3, x3, x1
bl posicion
BL cuadradito

add x4, x4, x1
bl posicion
BL cuadradito

add x4, x4, x1
bl posicion
BL cuadradito

	ldr x30,[sp,#0]  	// Restore X30 value from stack
    add sp,sp, #8  		// Restore SP to initial position

ret
/////////////////////////////////////////////////////////////////////////////////////
Lblock:
	sub sp,sp, #8  				// Reserve space for two registers
    str x30,[sp,#0]  			// Store Register X30 in stack

	movz x6, 0xf3, lsl 16		//color oscuro   F35D00
	movk x6, 0x5d00, lsl 00 	//color oscuro
	movz x5, 0xc2, lsl 16   	//color claro  C24A00
	movk x5, 0x4a00, lsl 00		//color claro

add x3, x3, x1
bl posicion
BL cuadradito

add x4, x4, x1
bl posicion
BL cuadradito

add x4, x4, x1
bl posicion
BL cuadradito

sub x3,x3,x1

bl posicion
BL cuadradito

	ldr x30,[sp,#0]  // Restore X30 value from stack
    add sp,sp, #8  // Restore SP to initial position
ret
/////////////////////////////////////////////////////////////////////////////////////////////
 end:
