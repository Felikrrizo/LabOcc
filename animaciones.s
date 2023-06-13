.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGHT,  480
.equ SCREEN_HALF_HEIGHT, 240
.equ BITS_PER_PIXEL, 32

.equ GPIO_BASE,    0x3f200000
.equ GPIO_GPFSEL0, 0x00
.equ GPIO_GPLEV0,  0x34


.globl derrumbe

derrumbe: 
    sub sp, sp, #8
    str lr, [sp]

    bl background

    //---------------------------------------------------------------
//edificio a la izquierda
    movz x24, 0xFF8,lsl 16

    bl Delay

    mov x1, 440         			//seteo tamaño   (alto)
    mov x2, 240					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1C10, lsl 00	   
    mov x3, 90   		// x3 es la coordenada de Y
    movz x4, 360				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 120         			//seteo tamaño   (alto)
    mov x2, 160					// seteo tamaño  (ancho)
    movz x10, 0x97, lsl 16
    movk x10, 0x2615, lsl 00	   
    mov x3, 90   		// x3 es la coordenada de Y
    movz x4, 440				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 500         			//seteo tamaño   (alto)
    mov x2, 240					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1613, lsl 00	   
    mov x3, 280   		// x3 es la coordenada de Y
    movz x4, 360				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 1?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 120   		// x3 es la coordenada de Y
    movz x4, 370				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 2?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 120   		// x3 es la coordenada de Y
    movz x4, 460				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 3?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 120   		// x3 es la coordenada de Y
    movz x4, 550				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 4?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 200   		// x3 es la coordenada de Y
    movz x4, 370				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 5?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 200   		// x3 es la coordenada de Y
    movz x4, 460				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 6?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 200   		// x3 es la coordenada de Y
    movz x4, 550				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

     //ventana derecha 7?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 280   		// x3 es la coordenada de Y
    movz x4, 370				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 8?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 280   		// x3 es la coordenada de Y
    movz x4, 460				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 9?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 280   		// x3 es la coordenada de Y
    movz x4, 550				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 10?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 360   		// x3 es la coordenada de Y
    movz x4, 370				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 11?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 360   		// x3 es la coordenada de Y
    movz x4, 460				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 12?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 360   		// x3 es la coordenada de Y
    movz x4, 550				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 13?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 440   		// x3 es la coordenada de Y
    movz x4, 370				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 14?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 440   		// x3 es la coordenada de Y
    movz x4, 460				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado


    //ventana derecha 15?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 440   		// x3 es la coordenada de Y
    movz x4, 550				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado    

//edificio un poco abajo
    movz x24, 0xFF8,lsl 16
    bl Delay
    bl background

    //Edificio DERECHA
    mov x1, 400         			//seteo tamaño   (alto)
    mov x2, 240					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1C10, lsl 00	   
    mov x3, 130   		// x3 es la coordenada de Y
    movz x4, 400				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 80         			//seteo tamaño   (alto)
    mov x2, 160					// seteo tamaño  (ancho)
    movz x10, 0x97, lsl 16
    movk x10, 0x2615, lsl 00	   
    mov x3, 130   		// x3 es la coordenada de Y
    movz x4, 480				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 460         			//seteo tamaño   (alto)
    mov x2, 240					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1613, lsl 00	   
    mov x3, 300   		// x3 es la coordenada de Y
    movz x4, 400				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado
 
//ventanas no implemetadas

    //ventana derecha 1?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 160   		// x3 es la coordenada de Y
    movz x4, 420				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 2?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 160   		// x3 es la coordenada de Y
    movz x4, 510				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 3?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 160   		// x3 es la coordenada de Y
    movz x4, 600				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 4?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 240   		// x3 es la coordenada de Y
    movz x4, 420				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 5?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 240  		// x3 es la coordenada de Y
    movz x4, 510				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 6?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 240  		// x3 es la coordenada de Y
    movz x4, 600				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 7?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 320   		// x3 es la coordenada de Y
    movz x4, 420				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 8?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 320   		// x3 es la coordenada de Y
    movz x4, 510				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 9?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 320   		// x3 es la coordenada de Y
    movz x4, 600				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 10?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 400   		// x3 es la coordenada de Y
    movz x4, 420				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 11?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 400   		// x3 es la coordenada de Y
    movz x4, 510				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 12?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 400   		// x3 es la coordenada de Y
    movz x4, 600				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 13?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 480   		// x3 es la coordenada de Y
    movz x4, 420				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 14?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 560   		// x3 es la coordenada de Y
    movz x4, 510				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado


    //ventana derecha 15?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 560   		// x3 es la coordenada de Y
    movz x4, 600				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado
 
    



// izquierda de nuevo
    movz x24, 0xFF8,lsl 16
    bl Delay

    bl background

    //Edificio derecha LUZ?
    mov x1, 400         			//seteo tamaño   (alto)
    mov x2, 240					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1C10, lsl 00	   
    mov x3, 130   		// x3 es la coordenada de Y
    movz x4, 360				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 80         			//seteo tamaño   (alto)
    mov x2, 160					// seteo tamaño  (ancho)
    movz x10, 0x97, lsl 16
    movk x10, 0x2615, lsl 00	   
    mov x3, 130   		// x3 es la coordenada de Y
    movz x4, 440				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 460         			//seteo tamaño   (alto)
    mov x2, 240					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1613, lsl 00	   
    mov x3, 300   		// x3 es la coordenada de Y
    movz x4, 360				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

     //ventana derecha 1?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 160   		// x3 es la coordenada de Y
    movz x4, 370				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 2?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 160   		// x3 es la coordenada de Y
    movz x4, 460				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 3?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 160   		// x3 es la coordenada de Y
    movz x4, 550				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 4?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 220   		// x3 es la coordenada de Y
    movz x4, 370				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 5?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 220  		// x3 es la coordenada de Y
    movz x4, 460				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 6?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 220  		// x3 es la coordenada de Y
    movz x4, 510				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 7?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 300   		// x3 es la coordenada de Y
    movz x4, 370				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 8?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 300   		// x3 es la coordenada de Y
    movz x4, 460				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 9?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 300   		// x3 es la coordenada de Y
    movz x4, 550				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 10?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 380   		// x3 es la coordenada de Y
    movz x4, 370				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 11?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 380   		// x3 es la coordenada de Y
    movz x4, 460				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 12?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 380   		// x3 es la coordenada de Y
    movz x4, 550				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 13?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 460   		// x3 es la coordenada de Y
    movz x4, 370				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 14?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 360   		// x3 es la coordenada de Y
    movz x4, 460				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado


    //ventana derecha 15?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 360   		// x3 es la coordenada de Y
    movz x4, 560				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado






// loop hasta el suelo de que se derrumba
    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background

    //Edificio derecha LUZ?
    mov x1, 410         			//seteo tamaño   (alto)
    mov x2, 240					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1C10, lsl 00	   
    mov x3, 120   		// x3 es la coordenada de Y
    movz x4, 400				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 90         			//seteo tamaño   (alto)
    mov x2, 160					// seteo tamaño  (ancho)
    movz x10, 0x97, lsl 16
    movk x10, 0x2615, lsl 00	   
    mov x3, 120   		// x3 es la coordenada de Y
    movz x4, 480				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 470         			//seteo tamaño   (alto)
    mov x2, 240					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1613, lsl 00	   
    mov x3, 290   		// x3 es la coordenada de Y
    movz x4, 400				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

            //ventana derecha 1?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 150   		// x3 es la coordenada de Y
    movz x4, 410			// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 2?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 150   		// x3 es la coordenada de Y
    movz x4, 500				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 3?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 150   		// x3 es la coordenada de Y
    movz x4, 590				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 4?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 230   		// x3 es la coordenada de Y
    movz x4, 410				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 5?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00   
    mov x3, 230   		// x3 es la coordenada de Y
    movz x4, 500				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 6?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8cc, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 230   		// x3 es la coordenada de Y
    movz x4, 590				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

     //ventana derecha 7?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 310   		// x3 es la coordenada de Y
    movz x4, 410				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 8?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 310   		// x3 es la coordenada de Y
    movz x4, 500				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 9?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 310   		// x3 es la coordenada de Y
    movz x4, 590				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 10?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 400   		// x3 es la coordenada de Y
    movz x4, 410				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 11?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 400   		// x3 es la coordenada de Y
    movz x4, 500				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 12?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 400   		// x3 es la coordenada de Y
    movz x4, 590				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    

// ------------- Edificio un poco abajo -------------------
    movz x24, 0xFF8,lsl 16
    bl Delay
    bl background

    //Edificio DERECHA
    mov x1, 400         			//seteo tamaño   (alto)
    mov x2, 240					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1C10, lsl 00	   
    mov x3, 130   		// x3 es la coordenada de Y
    movz x4, 400				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 80         			//seteo tamaño   (alto)
    mov x2, 160					// seteo tamaño  (ancho)
    movz x10, 0x97, lsl 16
    movk x10, 0x2615, lsl 00	   
    mov x3, 130   		// x3 es la coordenada de Y
    movz x4, 480				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 460         			//seteo tamaño   (alto)
    mov x2, 240					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1613, lsl 00	   
    mov x3, 300   		// x3 es la coordenada de Y
    movz x4, 400				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado


    //ventana derecha 1
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 160   		// x3 es la coordenada de Y
    movz x4, 420				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 2
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 160   		// x3 es la coordenada de Y
    movz x4, 510				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 3?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00
    mov x3, 160   		// x3 es la coordenada de Y
    movz x4, 600				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 4?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 240   		// x3 es la coordenada de Y
    movz x4, 420				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 5?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 240  		// x3 es la coordenada de Y
    movz x4, 510				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 6?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 240  		// x3 es la coordenada de Y
    movz x4, 600				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 7?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 320   		// x3 es la coordenada de Y
    movz x4, 420				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 8?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 320   		// x3 es la coordenada de Y
    movz x4, 510				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 9?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 320   		// x3 es la coordenada de Y
    movz x4, 600				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 10?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 400   		// x3 es la coordenada de Y
    movz x4, 420				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 11?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 400   		// x3 es la coordenada de Y
    movz x4, 510				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 12?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 400   		// x3 es la coordenada de Y
    movz x4, 600				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 13?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 480   		// x3 es la coordenada de Y
    movz x4, 420				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 14?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 560   		// x3 es la coordenada de Y
    movz x4, 510				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado


    //ventana derecha 15?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 560   		// x3 es la coordenada de Y
    movz x4, 600				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado


// para abajo nomas

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background

    //Edificio derecha LUZ?
    mov x1, 390         			//seteo tamaño   (alto)
    mov x2, 240					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1C10, lsl 00	   
    mov x3, 140   		// x3 es la coordenada de Y
    movz x4, 400				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 90         			//seteo tamaño   (alto)
    mov x2, 160					// seteo tamaño  (ancho)
    movz x10, 0x97, lsl 16
    movk x10, 0x2615, lsl 00	   
    mov x3, 140   		// x3 es la coordenada de Y
    movz x4, 480				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 450         			//seteo tamaño   (alto)
    mov x2, 240					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1613, lsl 00	   
    mov x3, 310   		// x3 es la coordenada de Y
    movz x4, 400				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado


    //ventana derecha 1
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 170   		// x3 es la coordenada de Y
    movz x4, 410				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 2
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 170   		// x3 es la coordenada de Y
    movz x4, 500				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 3?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00
    mov x3, 170   		// x3 es la coordenada de Y
    movz x4, 590				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 4?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 250   		// x3 es la coordenada de Y
    movz x4, 410				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 5?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 250  		// x3 es la coordenada de Y
    movz x4, 500				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 6?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 250  		// x3 es la coordenada de Y
    movz x4, 590				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    // polvo de derrumbe
    // primero de izquierda a derecha, arriba a abajo
    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,55		//radio del circulo 
	mov x8,435		//centro en eje y 
	mov x9,440		//centro en eje x	
	bl circulo
    //segundo
    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,22		//radio del circulo 
	mov x8,328		//centro en eje y 
	mov x9,510		//centro en eje x	
	bl circulo
    // tercero
    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,33		//radio del circulo 
	mov x8,385		//centro en eje y 
	mov x9,560		//centro en eje x	
	bl circulo
    // cuarto
    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,20		//radio del circulo 
	mov x8,460		//centro en eje y 
	mov x9,555		//centro en eje x	
	bl circulo 
    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,50		//radio del circulo 
	mov x8,430		//centro en eje y 
	mov x9,600		//centro en eje x	
	bl circulo
    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 60		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,50		//radio del circulo 
	mov x8,400		//centro en eje y 
	mov x9,590		//centro en eje x	
	bl circulo


// Y mas abajo
    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background

    //Edificio derecha LUZ?
    mov x1, 360         			//seteo tamaño   (alto)
    mov x2, 240					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1C10, lsl 00	   
    mov x3, 170   		// x3 es la coordenada de Y
    movz x4, 400				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 70         			//seteo tamaño   (alto)
    mov x2, 160					// seteo tamaño  (ancho)
    movz x10, 0x97, lsl 16
    movk x10, 0x2615, lsl 00	   
    mov x3, 160   		// x3 es la coordenada de Y
    movz x4, 480				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 420         			//seteo tamaño   (alto)
    mov x2, 240					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1613, lsl 00	   
    mov x3, 340   		// x3 es la coordenada de Y
    movz x4, 400				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

     //ventana derecha 1
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 220   		// x3 es la coordenada de Y
    movz x4, 400				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 2
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 250   		// x3 es la coordenada de Y
    movz x4, 510				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 3?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00
    mov x3, 200   		// x3 es la coordenada de Y
    movz x4, 590				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 4?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x37, lsl 16
    movk x10, 0x1309, lsl 00	   
    mov x3, 280   		// x3 es la coordenada de Y
    movz x4, 410				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 5?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 280  		// x3 es la coordenada de Y
    movz x4, 500				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 6?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
    mov x3, 280  		// x3 es la coordenada de Y
    movz x4, 590				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    // polvo de derrumbe
    // primero de izquierda a derecha, arriba a abajo
    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,70		//radio del circulo 
	mov x8,420		//centro en eje y 
	mov x9,460		//centro en eje x	
	bl circulo
    //segundo
    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,30		//radio del circulo 
	mov x8,320		//centro en eje y 
	mov x9,510		//centro en eje x	
	bl circulo
    // tercero
    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,40		//radio del circulo 
	mov x8,375		//centro en eje y 
	mov x9,560		//centro en eje x	
	bl circulo
    // cuarto
    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,30		//radio del circulo 
	mov x8,450		//centro en eje y 
	mov x9,550		//centro en eje x	
	bl circulo 
    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,50		//radio del circulo 
	mov x8,430		//centro en eje y 
	mov x9,600		//centro en eje x	
	bl circulo
    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 60		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,50		//radio del circulo 
	mov x8,400		//centro en eje y 
	mov x9,590		//centro en eje x	
	bl circulo

//
     movz x24, 0xFF8,lsl 16
    bl Delay

    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,30		//radio del circulo 
	mov x8,385		//centro en eje y 
	mov x9,540		//centro en eje x	
	bl circulo 
    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,30		//radio del circulo 
	mov x8,430		//centro en eje y 
	mov x9,610		//centro en eje x	
	bl circulo
    movz x10, 0x00C5, lsl 16
	movk x10, 0xB4AF, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,25		//radio del circulo 
	mov x8,380		//centro en eje y 
	mov x9,590		//centro en eje x	
	bl circulo


    ldr lr,[sp]
    add sp,sp,#8
    br lr

background:
    sub sp, sp, #8
    str lr, [sp]

    mov x1, 440         			//seteo tamaño   (alto)
    mov x2, 280					// seteo tamaño  (ancho)
    movz x10, 0x86, lsl 16
    movk x10, 0x1C10, lsl 00	   
    mov x3, 90   		// x3 es la coordenada de Y
    movz x4, 360				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado


    // cemento 1
    mov x1, 40              //seteo tamaño   (alto)
    mov x2, 280             // seteo tamaño  (ancho)
    movz x10, 0x99, lsl 16
    movk x10, 0x9DA8, lsl 00
    mov x3, 440  		// x3 es la coordenada de Y
    movz x4, 360		// x4 es la coordenada de X
    mov x19, 4          //bits per pixel 
    bl posicion
    bl RectanguloPintado

    
    // cemento 2
    mov x1, 40
    mov x2, 280
    movz x10, 0x87, lsl 16   	
	movk x10, 0x8B96, lsl 00
    mov x3, 400   		// x3 es la coordenada de Y
    movz x4, 360		// x4 es la coordenada de X
    mov x19, 4	        //bits per pixel 
    bl posicion
    bl RectanguloPintado

    // cemento 3
    mov x1, 40
    mov x2, 280
    movz x10, 0x7C, lsl 16   
	movk x10, 0x808A, lsl 00
    mov x3, 360   		// x3 es la coordenada de Y
    movz x4, 360		// x4 es la coordenada de X
    mov x19, 4	        //bits per pixel 
    bl posicion
    bl RectanguloPintado

    // pasto de fondo

    mov x1, 40
    mov x2, 280
    movz x10, 0x32, lsl 16   
	movk x10, 0xB358, lsl 00
    mov x3, 320   		// x3 es la coordenada de Y
    movz x4, 360		// x4 es la coordenada de X
    mov x19, 4	        //bits per pixel 
    bl posicion
    bl RectanguloPintado

    mov x1, 40
    mov x2, 280
    movk x10, 0x003E, lsl 16    //
	movz x10, 0x9A59, lsl 0
    mov x3, 280   		// x3 es la coordenada de Y
    movz x4, 360		// x4 es la coordenada de X
    mov x19, 4	        //bits per pixel 
    bl posicion
    bl RectanguloPintado

    mov x1, 40
    mov x2, 280
    movk x10, 0x32, lsl 16    //
	movz x10, 0x7f49, lsl 0
    mov x3, 240   		// x3 es la coordenada de Y
    movz x4, 360		// x4 es la coordenada de X
    mov x19, 4	        //bits per pixel 
    bl posicion
    bl RectanguloPintado
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

    // cielo
    mov x1, 70
    mov x2, 280
    movk x10, 0x13, lsl 16    //
	movz x10, 0x9CE9, lsl 0
    mov x3, 170   		// x3 es la coordenada de Y
    movz x4, 360		// x4 es la coordenada de X
    mov x19, 4	        //bits per pixel 
    bl posicion
    bl RectanguloPintado

    mov x1, 55
    mov x2, 280
    movk x10, 0x10, lsl 16    //
	movz x10, 0x8DE5, lsl 0
    mov x3, 115   		// x3 es la coordenada de Y
    movz x4, 360		// x4 es la coordenada de X
    mov x19, 4	        //bits per pixel 
    bl posicion
    bl RectanguloPintado

    mov x1, 60
    mov x2, 280
    movk x10, 0x0C, lsl 16    //
	movz x10, 0x80C1, lsl 0
    mov x3, 55   		// x3 es la coordenada de Y
    movz x4, 360		// x4 es la coordenada de X
    mov x19, 4	        //bits per pixel 
    bl posicion
    bl RectanguloPintado

    // al sol arreglalo talla *--->* lo arreglo talla
// ----------------- sol  y sus "bugs"----------------------------------------------------------


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
    

    // como se bugue el sol vuelvo a pintar el edificio de adelante
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

        // ventanas //ventana izquierda 1
        mov x1, 45         			//seteo tamaño   (alto)
        mov x2, 45						// seteo tamaño  (ancho)
        movz x10, 0xC8, lsl 16
        movk x10, 0xE3DD, lsl 00	   
        mov x3, 440   		// x3 es la coordenada de Y
        movz x4, 20				// x4 es la coordenada de X
        mov x19, 4 					//bits per pixel    
        bl posicion
        bl RectanguloPintado

        //ventana izquierda 2
        mov x1, 45         			//seteo tamaño   (alto)
        mov x2, 45						// seteo tamaño  (ancho)
        movz x10, 0xC8, lsl 16
        movk x10, 0xE3DD, lsl 00	   
        mov x3, 440   		// x3 es la coordenada de Y
        movz x4, 120				// x4 es la coordenada de X
        mov x19, 4 					//bits per pixel 
        bl posicion
        bl RectanguloPintado

        //ventana izquierda 3
        mov x1, 45         			//seteo tamaño   (alto)
        mov x2, 45						// seteo tamaño  (ancho)
        movz x10, 0xC8, lsl 16
        movk x10, 0xE3DD, lsl 00	   
        mov x3, 440   		// x3 es la coordenada de Y
        movz x4, 20				// x4 es la coordenada de X
        mov x19, 4 					//bits per pixel 
        bl posicion
        bl RectanguloPintado

        //ventana izquierda 4
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


ldr lr,[sp] 
add sp,sp,#8
br lr




