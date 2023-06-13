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
    movz x10, 0xC8, lsl 16
    movk x10, 0xE3DD, lsl 00	   
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
    movz x4, 460				// x4 es la coordenada de X
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
    movz x24, 0xFFF,lsl 16
    bl Delay

    //Edificio derecha LUZ?
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
/*
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
*/

    bl background

// izquierda de nuevo
    movz x24, 0xFFF,lsl 16
    bl Delay

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
// loop hasta el suelo de que se derrumba
    movz x24, 0xFFF,lsl 16
    bl Delay

    //Edificio derecha LUZ?
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

    bl background

    movz x24, 0xFFF,lsl 16
    bl Delay 
// para abajo nomas

    movz x24, 0xFFF,lsl 16
    bl Delay

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
    mov x1, 80         			//seteo tamaño   (alto)
    mov x2, 160					// seteo tamaño  (ancho)
    movz x10, 0x97, lsl 16
    movk x10, 0x2615, lsl 00	   
    mov x3, 170   		// x3 es la coordenada de Y
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

    movz x24, 0xFFF,lsl 16
    bl Delay 

//


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

    // al sol arreglalo talla 
    

    ldr lr,[sp] 
    add sp,sp,#8
    br lr




