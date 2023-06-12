.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGHT,  480
.equ SCREEN_HALF_HEIGHT, 240
.equ BITS_PER_PIXEL, 32

.equ GPIO_BASE,    0x3f200000
.equ GPIO_GPFSEL0, 0x00
.equ GPIO_GPLEV0,  0x34
.globl pintar_dia


	//------------------------DIA---------------------------------------


pintar_dia:
    sub sp, sp, #8
    str lr, [sp]

	// x0 contiene la direccion base del framebuffer
	mov x20, x0 // Guarda la dirección base del framebuffer en x20
//CIELO degradez
    movk x10, 0x000A, lsl 16    //
	movz x10, 0x76B3, lsl 0      //COLOR AZUL DEL CIELO

	mov x2, 55        // Y Size para la primera sección del cielo
loop1:
	mov x1, SCREEN_WIDTH         // X Size
loop0:
	stur w10,[x0]  // Colorear el pixel N
	add x0,x0,4    // Siguiente pixel
	sub x1,x1,1    // Decrementar contador X
	cbnz x1,loop0  // Si no terminó la fila, salto
	sub x2,x2,1    // Decrementar contador Y
	cbnz x2,loop1  // Si no es la última fila, salto

   
//CIELO 2ro color del degradez
    movk x10, 0x000C, lsl 16    //
	movz x10, 0x80C1, lsl 0      //COLOR AZUL DEL CIELO

	mov x2, 60       // Y Size para la segunda sección del cielo
loop3:
	mov x1, SCREEN_WIDTH         // X Size
loop2:
	stur w10,[x0]  // Colorear el pixel N
	add x0,x0,4    // Siguiente pixel
	sub x1,x1,1    // Decrementar contador X
	cbnz x1,loop2  // Si no terminó la fila, salto
	sub x2,x2,1    // Decrementar contador Y
	cbnz x2,loop3  // Si no es la última fila, salto

//CIELO 3ro degradez
    movk x10, 0x0010, lsl 16    //
	movz x10, 0x8DE5, lsl 0      //COLOR AZUL DEL CIELO
	mov x2, 55        // Y Size para la primera sección del cielo
loopz:
	mov x1, SCREEN_WIDTH         // X Size
loopq:
	stur w10,[x0]  // Colorear el pixel N
	add x0,x0,4    // Siguiente pixel
	sub x1,x1,1    // Decrementar contador X
	cbnz x1,loopq  // Si no terminó la fila, salto
	sub x2,x2,1    // Decrementar contador Y
	cbnz x2,loopz  // Si no es la última fila, salto

//CIELO 4to degradez
    movk x10, 0x0013, lsl 16    //
	movz x10, 0x9CE9, lsl 0      //COLOR AZUL DEL CIELO
	mov x2, 70        // Y Size para la primera sección del cielo
loopz1:
	mov x1, SCREEN_WIDTH         // X Size
loopq2:
	stur w10,[x0]  // Colorear el pixel N
	add x0,x0,4    // Siguiente pixel
	sub x1,x1,1    // Decrementar contador X
	cbnz x1,loopq2  // Si no terminó la fila, salto
	sub x2,x2,1    // Decrementar contador Y
	cbnz x2,loopz1  // Si no es la última fila, salto

//PASTO CANCHITA color del degradez
    movk x10, 0x32, lsl 16    //
	movz x10, 0x7f49, lsl 0      //COLOR AZUL DEL CIELO

	mov x2, 40        // Y Size para la cuarta sección del cielo
loop7:
	mov x1, SCREEN_WIDTH         // X Size
loop6:
	stur w10,[x0]  // Colorear el pixel N
	add x0,x0,4    // Siguiente pixel
	sub x1,x1,1    // Decrementar contador X
	cbnz x1,loop6  // Si no terminó la fila, salto
	sub x2,x2,1    // Decrementar contador Y
	cbnz x2,loop7  // Si no es la última fila, salto

//PASTO CANCHITA color del degradez

    movk x10, 0x003E, lsl 16    //
	movz x10, 0x9A59, lsl 0      //COLOR blanco

	mov x2, 40       // Y Size para la quinta sección del cielo
loop9:
	mov x1, SCREEN_WIDTH         // X Size
loop8:
	stur w10,[x0]  // Colorear el pixel N
	add x0,x0,4    // Siguiente pixel
	sub x1,x1,1    // Decrementar contador X
	cbnz x1,loop8  // Si no terminó la fila, salto
	sub x2,x2,1    // Decrementar contador Y
	cbnz x2,loop9  // Si no es la última fila, salto

// PASTO CANCHITA 3ER COLOR
	movk x10, 0x0032, lsl 16    //
	movz x10, 0xB358, lsl 0     
	mov x2, 40       // Y Size para la quinta sección del cielo
loopz3:
	mov x1, SCREEN_WIDTH         // X Size
loopq3:
	stur w10,[x0]  // Colorear el pixel N
	add x0,x0,4    // Siguiente pixel
	sub x1,x1,1    // Decrementar contador X
	cbnz x1,loopq3  // Si no terminó la fila, salto
	sub x2,x2,1    // Decrementar contador Y
	cbnz x2,loopz3  // Si no es la última fila, salto

//cemento va de claro a oscuro xq el sol esta entre medio de el ultimo edificio y los dos de enfrente
//y como es de dia y el sol da reflejo medio azulado los colores son medios azulados
	movz x6, 0x7C, lsl 16   	//color cemento, ponele
	movk x6, 0x808A, lsl 00		

	mov x3, 40        // Y Size para el piso
loop11:
    mov x4, SCREEN_WIDTH    // X Size
loop10:
    stur w6, [x0]   // Colorear el pixel N
    add x0, x0, 4  // Siguiente pixel
    sub x4, x4, 1  // Decrementar contador X
    cbnz x4, loop10 // Si no terminó la fila, salto
    sub x3, x3, 1  // Decrementar contador Y
    cbnz x3, loop11 // Si no es la última fila, salto

//segundo color de cemento
	movz x6, 0x87, lsl 16   	//color cemento, ponele
	movk x6, 0x8B96, lsl 00		

	mov x3, 40        // Y Size para el piso
loop13:
    mov x4, SCREEN_WIDTH    // X Size
loop12:
    stur w6, [x0]   // Colorear el pixel N
    add x0, x0, 4  // Siguiente pixel
    sub x4, x4, 1  // Decrementar contador X
    cbnz x4, loop12 // Si no terminó la fila, salto
    sub x3, x3, 1  // Decrementar contador Y
    cbnz x3, loop13 // Si no es la última fila, salto

//tercer color de cemento
	movz x6, 0x99, lsl 16   	//color cemento, ponele
	movk x6, 0x9DA8, lsl 00		

	mov x3, 40        // Y Size para el piso
loop15:
    mov x4, SCREEN_WIDTH    // X Size
loop14:
    stur w6, [x0]   // Colorear el pixel N
    add x0, x0, 4  // Siguiente pixel
    sub x4, x4, 1  // Decrementar contador X
    cbnz x4, loop14 // Si no terminó la fila, salto
    sub x3, x3, 1  // Decrementar contador Y
    cbnz x3, loop15 // Si no es la última fila, salto

//cuarto color de cemento
	movz x6, 0xA3, lsl 16   	//color cemento, ponele
	movk x6, 0xa8b7, lsl 00		

	mov x3, 40        // Y Size para el piso
loop17:
    mov x4, SCREEN_WIDTH    // X Size
loop16:
    stur w6, [x0]   // Colorear el pixel N
    add x0, x0, 4  // Siguiente pixel
    sub x4, x4, 1  // Decrementar contador X
    cbnz x4, loop16 // Si no terminó la fila, salto
    sub x3, x3, 1  // Decrementar contador Y
    cbnz x3, loop17 // Si no es la última fila, salto


	// caminito del piso
	movz x10, 0x0037, lsl 16
	movk x10, 0x3228, lsl 00
	mov x1, 70	// weigth
	mov x2, 8 // row to paint
	mov x3, 480 // ypos
	mov x4, 295 // xpos
	bl triangulo



	// ------------ PARCHE TRIANGULO CANCHA --------------
	mov x1, 40     			//seteo tamaño   (alto)
	mov x2, 150						// seteo tamaño  (ancho)
	movz x10, 0x0032, lsl 16
	movk x10, 0xB358, lsl 00	   
	mov x3, 320	 		// x3 es la coordenada de Y
	movz x4, 250	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado

	mov x1, 10     			//seteo tamaño   (alto)
	mov x2, 10						// seteo tamaño  (ancho)
	movz x10, 0x0032, lsl 16
	movk x10, 0x7F49, lsl 00	   
	mov x3, 268	 		// x3 es la coordenada de Y
	movz x4, 326	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado



	mov x1, 50       			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x0025, lsl 16
	movk x10, 0x2525, lsl 00	   
	mov x3, 405	 		// x3 es la coordenada de Y
	movz x4, 310	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 45       			//seteo tamaño   (alto)
	mov x2, 4						// seteo tamaño  (ancho)
	movz x10, 0x0025, lsl 16
	movk x10, 0x2525, lsl 00	   
	mov x3, 368 		// x3 es la coordenada de Y
	movz x4, 335	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 35      			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x0025, lsl 16
	movk x10, 0x2525, lsl 00	   
	mov x3, 435	 		// x3 es la coordenada de Y
	movz x4, 345	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	// piedras pisp
	mov x1, 5       			//seteo tamaño   (alto)
	mov x2, 5						// seteo tamaño  (ancho)
	movz x10, 0x0056, lsl 16
	movk x10, 0x5656, lsl 00	   
	mov x3, 380	 		// x3 es la coordenada de Y
	movz x4, 320	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 5       			//seteo tamaño   (alto)
	mov x2, 5						// seteo tamaño  (ancho)
	movz x10, 0x0056, lsl 16
	movk x10, 0x5656, lsl 00	   
	mov x3, 400	 		// x3 es la coordenada de Y
	movz x4, 343	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 5       			//seteo tamaño   (alto)
	mov x2, 5						// seteo tamaño  (ancho)
	movz x10, 0x0056, lsl 16
	movk x10, 0x5656, lsl 00	   
	mov x3, 435	 		// x3 es la coordenada de Y
	movz x4, 325	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado

///Llamada para dibujar

// l----------------- sol ----------------------------------------------------------

	movz x10, 0x00F0, lsl 16
	movk x10, 0xE12D, lsl 00

	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,70 		//radio del circulo 
	mov x8,45		//centro en eje y 
	mov x9,580	//centro en eje x	
	bl circulo


// ---- DETALLES sol  ---------------------------------------------------------------
	movz x10, 0x00F0, lsl 16
	movk x10, 0xA626, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,62 		//radio del circulo 
	mov x8,45		//centro en eje y 
	mov x9,580		//centro en eje x	
	bl circulo

	movz x10, 0x00D5, lsl 16
	movk x10, 0x6022, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,52		//radio del circulo 
	mov x8,45		//centro en eje y 
	mov x9,580		//centro en eje x	
	bl circulo



//CANCHITA ATRAS?
mov x1, 60       			//seteo tamaño   (alto)
mov x2, 130						// seteo tamaño  (ancho)
movz x10, 0xff, lsl 16
movk x10, 0xffff, lsl 00	   
mov x3, 275	    		// x3 es la coordenada de Y
movz x4, 265		// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//CANCHITA ATRAS?
mov x1, 4       			//seteo tamaño   (alto)
mov x2, 128					// seteo tamaño  (ancho)
movz x10, 0x32, lsl 16
movk x10, 0x7f49, lsl 00	   
mov x3, 276   		// x3 es la coordenada de Y
movz x4, 266		// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

mov x1, 40        			//seteo tamaño   (alto)
mov x2, 128					// seteo tamaño  (ancho)
movz x10, 0x003E, lsl 16
movk x10, 0x9A59, lsl 00	   
mov x3, 280   		// x3 es la coordenada de Y
movz x4, 266		// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

mov x1, 14        			//seteo tamaño   (alto)
mov x2, 128					// seteo tamaño  (ancho)
movz x10, 0x0032, lsl 16
movk x10, 0xB358, lsl 00	   
mov x3, 320   		// x3 es la coordenada de Y
movz x4, 266		// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//centro cancha blanca

	movz x10, 0xFF, lsl 16
	movk x10, 0xffff, lsl 00

	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 2		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 10		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,20		//radio del circulo 
	mov x8,303		//centro en eje y 
	mov x9,328		//centro en eje x	
	bl circulo

//centro de la cancha

	movz x10, 0x003E, lsl 16
	movk x10, 0x9A59, lsl 00	 
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 2		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 10		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,18 		//radio del circulo 
	mov x8,303		//centro en eje y 
	mov x9,328		//centro en eje x	
	bl circulo


//linea medio cancha?
mov x1, 60         			//seteo tamaño   (alto)
mov x2, 4						// seteo tamaño  (ancho)
movz x10, 0xff, lsl 16
movk x10, 0xffff, lsl 00	   
mov x3, 275	    		// x3 es la coordenada de Y
movz x4, 326		// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//Edificio izquirda ATRAS?
mov x1, 300         			//seteo tamaño   (alto)
mov x2, 220					// seteo tamaño  (ancho)
//002f3e30

movz x10, 0x28, lsl 16
movk x10, 0x4c4a, lsl 00	   
mov x3, 80	    		// x3 es la coordenada de Y
movz x4, 30			// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//Edificio izquirda delante 2?
mov x1, 570        			//seteo tamaño   (alto)
mov x2, 190						// seteo tamaño  (ancho)
movz x10, 0x3C, lsl 16
movk x10, 0x3C3C, lsl 00	   
mov x3, 16	    		// x3 es la coordenada de Y
movz x4, 0			// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//Edificio izquirda delante 2 luz?
mov x1, 300        			//seteo tamaño   (alto)
mov x2, 88						// seteo tamaño  (ancho)
movz x10, 0x45, lsl 16 
movk x10, 0x4546, lsl 00	   
mov x3, 16	    		// x3 es la coordenada de Y
movz x4, 102			// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//Edificio izquirda delante 2 luz?
mov x1, 390        			//seteo tamaño   (alto)
mov x2, 60						// seteo tamaño  (ancho)
movz x10, 0x3E, lsl 16
movk x10, 0x4144, lsl 00	   
mov x3, 16	    		// x3 es la coordenada de Y
movz x4, 52			// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//Edificio derecha LUZ?
mov x1, 440         			//seteo tamaño   (alto)
mov x2, 240					// seteo tamaño  (ancho)
movz x10, 0x86, lsl 16
movk x10, 0x1C10, lsl 00	   
mov x3, 90   		// x3 es la coordenada de Y
movz x4, 400				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//Edificio derecha luz?
mov x1, 120         			//seteo tamaño   (alto)
mov x2, 160					// seteo tamaño  (ancho)
movz x10, 0x97, lsl 16
movk x10, 0x2615, lsl 00	   
mov x3, 90   		// x3 es la coordenada de Y
movz x4, 480				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//Edificio derecha luz?
mov x1, 500         			//seteo tamaño   (alto)
mov x2, 240					// seteo tamaño  (ancho)
movz x10, 0x86, lsl 16
movk x10, 0x1613, lsl 00	   
mov x3, 280   		// x3 es la coordenada de Y
movz x4, 400				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana derecha 1?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 120   		// x3 es la coordenada de Y
movz x4, 410				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana derecha 2?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 120   		// x3 es la coordenada de Y
movz x4, 500				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana derecha 3?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 120   		// x3 es la coordenada de Y
movz x4, 590				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana derecha 4?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 200   		// x3 es la coordenada de Y
movz x4, 410				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana derecha 5?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 200   		// x3 es la coordenada de Y
movz x4, 500				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana derecha 6?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 200   		// x3 es la coordenada de Y
movz x4, 590				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana derecha 7?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 280   		// x3 es la coordenada de Y
movz x4, 410				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana derecha 8?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 280   		// x3 es la coordenada de Y
movz x4, 500				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana derecha 9?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 280   		// x3 es la coordenada de Y
movz x4, 590				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana derecha 10?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 360   		// x3 es la coordenada de Y
movz x4, 410				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana derecha 11?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 360   		// x3 es la coordenada de Y
movz x4, 500				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana derecha 12?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 360   		// x3 es la coordenada de Y
movz x4, 590				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana derecha 13?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 440   		// x3 es la coordenada de Y
movz x4, 410				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana derecha 14?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 440   		// x3 es la coordenada de Y
movz x4, 500				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado


//ventana derecha 15?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 440   		// x3 es la coordenada de Y
movz x4, 590				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana izquierda 1?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 440   		// x3 es la coordenada de Y
movz x4, 20				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana izquierda 2?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 440   		// x3 es la coordenada de Y
movz x4, 120				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana izquierda 3?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 440   		// x3 es la coordenada de Y
movz x4, 20				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana izquierda 4?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 310   		// x3 es la coordenada de Y
movz x4, 120				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana izquierda 5?
mov x1, 90         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 280   		// x3 es la coordenada de Y
movz x4, 20				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana izquierda 6?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 200   		// x3 es la coordenada de Y
movz x4, 120				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado


//ventana izquierda 7?
mov x1, 80         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 120   		// x3 es la coordenada de Y
movz x4, 20				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana izquierda 8?
mov x1, 80         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 80   		// x3 es la coordenada de Y
movz x4, 120				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana izquierda 9?
mov x1, 45         			//seteo tamaño   (alto)
mov x2, 45						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00   
mov x3, 35   		// x3 es la coordenada de Y
movz x4, 20				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana izquierda edificio trasero 1?
mov x1, 70         			//seteo tamaño   (alto)
mov x2, 30						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 100   		// x3 es la coordenada de Y
movz x4, 190				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//ventana izquierda edificio trasero 2?
mov x1, 55         			//seteo tamaño   (alto)
mov x2, 30						// seteo tamaño  (ancho)
movz x10, 0xC8, lsl 16
movk x10, 0xE3DD, lsl 00	   
mov x3, 228   		// x3 es la coordenada de Y
movz x4, 190				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//Parte de la puerta de edificio trasero?
mov x1, 55         			//seteo tamaño   (alto)
mov x2, 26					// seteo tamaño  (ancho)
movz x10, 0x80, lsl 16
movk x10, 0x4000, lsl 00	   
mov x3, 326  		// x3 es la coordenada de Y
movz x4, 190				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

// ------------- FAROLAS -----------------------------------------------------------------------------------
//	farola 0 izquiera de abajo a arriba
//  Poste 
mov x1, 74         			//seteo tamaño   (alto)
mov x2, 6						// seteo tamaño  (ancho)
movz x10, 0x11, lsl 16
movk x10, 0x1111, lsl 00	   
mov x3, 430   		// x3 es la coordenada de Y
movz x4, 282				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado
// 	Brazo
mov x1, 6         			//seteo tamaño   (alto)
mov x2, 30						// seteo tamaño  (ancho)
movz x10, 0x11, lsl 16
movk x10, 0x1111, lsl 00	   
mov x3, 430   		// x3 es la coordenada de Y
movz x4, 282				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado
// 	Foco
mov x1, 5         			//seteo tamaño   (alto)
mov x2, 8						// seteo tamaño  (ancho)
movz x10, 0x007F, lsl 16
movk x10, 0x7502, lsl 00	   
mov x3, 430  		// x3 es la coordenada de Y
movz x4, 312				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado


//	farola 1 izquiera de abajo a arriba
//  Poste 
mov x1, 70         			//seteo tamaño   (alto)
mov x2, 5						// seteo tamaño  (ancho)
movz x10, 0x11, lsl 16
movk x10, 0x1111, lsl 00	   
mov x3, 390   		// x3 es la coordenada de Y
movz x4, 290				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado
// 	Brazo
mov x1, 5         			//seteo tamaño   (alto)
mov x2, 27						// seteo tamaño  (ancho)
movz x10, 0x11, lsl 16
movk x10, 0x1111, lsl 00	   
mov x3, 390   		// x3 es la coordenada de Y
movz x4, 290				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado
// 	Foco
mov x1, 4         			//seteo tamaño   (alto)
mov x2, 7						// seteo tamaño  (ancho)
movz x10, 0x007F, lsl 16
movk x10, 0x7502, lsl 00	   
mov x3, 390   		// x3 es la coordenada de Y
movz x4, 317				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//	farola 2 izquiera de abajo a arriba
//  Poste 
mov x1, 66         			//seteo tamaño   (alto)
mov x2, 4						// seteo tamaño  (ancho)
movz x10, 0x11, lsl 16
movk x10, 0x1111, lsl 00	   
mov x3, 350   		// x3 es la coordenada de Y
movz x4, 298				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado
// 	Brazo
mov x1, 4         			//seteo tamaño   (alto)
mov x2, 24						// seteo tamaño  (ancho)
movz x10, 0x11, lsl 16
movk x10, 0x1111, lsl 00	   
mov x3, 350   		// x3 es la coordenada de Y
movz x4, 298				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado
// 	Foco
mov x1, 3         			//seteo tamaño   (alto)
mov x2, 6						// seteo tamaño  (ancho)
movz x10, 0x007F, lsl 16
movk x10, 0x7502, lsl 00   
mov x3, 350   		// x3 es la coordenada de Y
movz x4, 321				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado



//	farola 3 izquiera de abajo a arriba
//  Poste 
mov x1, 55         			//seteo tamaño   (alto)
mov x2, 4						// seteo tamaño  (ancho)
movz x10, 0x11, lsl 16
movk x10, 0x1111, lsl 00	   
mov x3, 320   		// x3 es la coordenada de Y
movz x4, 306				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado
// 	Brazo
	mov x1, 4         			//seteo tamaño   (alto)
	mov x2, 20						// seteo tamaño  (ancho)
	movz x10, 0x11, lsl 16
	movk x10, 0x1111, lsl 00	   
	mov x3, 320  		// x3 es la coordenada de Y
	movz x4, 306				// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
// 	Foco
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 6						// seteo tamaño  (ancho)
	movz x10, 0x007F, lsl 16
	movk x10, 0x7502, lsl 00	   
	mov x3, 320   		// x3 es la coordenada de Y
	movz x4, 325				// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado

ldr lr,[sp]
    add sp,sp,#8
    br lr
    


	

