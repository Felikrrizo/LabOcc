.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGHT,  480
.equ SCREEN_HALF_HEIGHT, 240
.equ BITS_PER_PIXEL, 32

.equ GPIO_BASE,    0x3f200000
.equ GPIO_GPFSEL0, 0x00
.equ GPIO_GPLEV0,  0x34

.globl OVNI
OVNI:


    sub sp, sp, #8
    str lr, [sp]
    

    mov x8, 30
    mov x9, 50
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay

    bl background_ovni
    //-----

    mov x8, 35
    mov x9, 60
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay

    bl background_ovni

    //-----

    mov x8, 40
    mov x9, 70
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay

    bl background_ovni

    //-----
    
    mov x8, 45
    mov x9, 80
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay

    bl background_ovni

    //-----
    
    mov x8, 50
    mov x9, 90
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay

    bl background_ovni

    //-----
    
    mov x8, 55
    mov x9, 100
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay

    bl background_ovni

    //-----
    
    mov x8, 60
    mov x9, 110
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay

    bl background_ovni

    //-----
    
    mov x8, 65
    mov x9, 120
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 70
    mov x9, 130
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 140
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 150
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni
    
    //-----
    
    mov x8, 80
    mov x9, 160
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 170
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 180
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 190
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 200
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 200
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 210
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 220
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 220
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 230
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 240
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni
    
    //-----
    
    mov x8, 80
    mov x9, 250
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 260
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 270
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 280
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 290
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 300
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 310
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 320
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 330
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 340
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 350
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 360
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 370
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 380
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni


    //-----
    
    mov x8, 80
    mov x9, 390
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    
    bl background_ovni

    //-----
    
    mov x8, 80
    mov x9, 400
    bl spriteOvni

    movz x24, 0xFF8,lsl 16
    bl Delay
    

    //---- animaciones que faltan se las dejo a koda para hacer




    ldr lr,[sp] 
    add sp,sp,#8
    br lr



//x8 pos y
//x9 pos x
spriteOvni:
    sub sp, sp, #8
    str lr, [sp]

    // parte izquierda
    movz x10, 0x0F, lsl 16
	movk x10, 0x0F1B, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7, 35 		//radio del circulo
    sub x9, x9, 23 
    bl circulo

    // parte centro
    movz x10, 0x0F, lsl 16
	movk x10, 0x0F1B, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7, 35 		//radio del circulo 
    add x9, x9, 23 
    bl circulo

    // parte derecha
    movz x10, 0x0F, lsl 16
	movk x10, 0x0F1B, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7, 35 		//radio del circulo 
    add x9, x9, 23 
    bl circulo

    // ventana? izquierda
    movz x10, 0x0F, lsl 16
	movk x10, 0x0000, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7, 7 		//radio del circulo 
    sub x9, x9, 56 
    bl circulo

    // ventana? centro
    movz x10, 0x0F, lsl 16
	movk x10, 0x0000, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7, 7 		//radio del circulo 
    add x9, x9, 33
    bl circulo

    // ventana? derecha
    movz x10, 0x0F, lsl 16
	movk x10, 0x0000, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7, 7 		//radio del circulo  
    add x9, x9, 33
    bl circulo

    ldr lr,[sp] 
    add sp,sp,#8
    br lr


background_ovni:
    sub sp, sp, #8
    str lr, [sp]


    // cielo
    mov x1, 70
    mov x2, 640
    movk x10, 0x0006, lsl 16    //
	movz x10, 0x1b79, lsl 0
    mov x3, 170   		// x3 es la coordenada de Y
    movz x4, 0		// x4 es la coordenada de X
    mov x19, 4	        //bits per pixel 
    bl posicion
    bl RectanguloPintado

    mov x1, 55
    mov x2, 640
    movk x10, 0x0006, lsl 16    //
	movz x10, 0x1768, lsl 0
    mov x3, 115   		// x3 es la coordenada de Y
    movz x4, 0		// x4 es la coordenada de X
    mov x19, 4	        //bits per pixel 
    bl posicion
    bl RectanguloPintado

    mov x1, 60
    mov x2, 640
    movk x10, 0x0003, lsl 16    //
	movz x10, 0x0e32, lsl 0
    mov x3, 55   		// x3 es la coordenada de Y
    movz x4, 0		// x4 es la coordenada de X
    mov x19, 4	        //bits per pixel 
    bl posicion
    bl RectanguloPintado


    mov x1, 55
    mov x2, 640
    movk x10, 0x0002, lsl 16    //
	movz x10, 0x091e, lsl 0
    mov x3, 0   		// x3 es la coordenada de Y
    movz x4, 0		// x4 es la coordenada de X
    mov x19, 4	        //bits per pixel 
    bl posicion
    bl RectanguloPintado

    // l----------------- LUNA ----------------------------------------------------------

	movz x10, 0x00C2, lsl 16
	movk x10, 0xC3B0, lsl 00

	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,85 		//radio del circulo 
	mov x8,95		//centro en eje y 
	mov x9,323		//centro en eje x	
	bl circulo

    // ---- DETALLES LUNA (CRATERES) ---------------------------------------------------------------
	movz x10, 0x0092, lsl 16
	movk x10, 0x937A, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,5 		//radio del circulo 
	mov x8,30		//centro en eje y 
	mov x9,335		//centro en eje x	
	bl circulo

	movz x10, 0x0092, lsl 16
	movk x10, 0x937A, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,25 		//radio del circulo 
	mov x8,70		//centro en eje y 
	mov x9,300		//centro en eje x	
	bl circulo

	movz x10, 0x0092, lsl 16
	movk x10, 0x937A, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,15 		//radio del circulo 
	mov x8,100		//centro en eje y 
	mov x9,350		//centro en eje x	
	bl circulo

	movz x10, 0x0092, lsl 16
	movk x10, 0x937A, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,12 		//radio del circulo 
	mov x8,135		//centro en eje y 
	mov x9,275		//centro en eje x	
	bl circulo

	movz x10, 0x0092, lsl 16
	movk x10, 0x937A, lsl 00
	mov x2, SCREEN_HEIGHT         // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,5 		//radio del circulo 
	mov x8,160		//centro en eje y 
	mov x9,370		//centro en eje x	
	bl circulo

    // ------------------- ESTRELLAS -------------------------
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 30	 		// x3 es la coordenada de Y
	movz x4, 500	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 40	 		// x3 es la coordenada de Y
	movz x4, 570	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 15	 		// x3 es la coordenada de Y
	movz x4, 595	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 40	 		// x3 es la coordenada de Y
	movz x4, 245	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 57	 		// x3 es la coordenada de Y
	movz x4, 200	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 20	 		// x3 es la coordenada de Y
	movz x4, 215	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 70	 		// x3 es la coordenada de Y
	movz x4, 430	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 86	 		// x3 es la coordenada de Y
	movz x4, 455	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado	
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 32	 		// x3 es la coordenada de Y
	movz x4, 450	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 20	 		// x3 es la coordenada de Y
	movz x4, 410	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 75	 		// x3 es la coordenada de Y
	movz x4, 512	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 70	 		// x3 es la coordenada de Y
	movz x4, 580	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 80	 		// x3 es la coordenada de Y
	movz x4, 605	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 45	 		// x3 es la coordenada de Y
	movz x4, 616	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 5	 		// x3 es la coordenada de Y
	movz x4, 10	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 10	 		// x3 es la coordenada de Y
	movz x4, 135	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 185	 		// x3 es la coordenada de Y
	movz x4, 270	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 180	 		// x3 es la coordenada de Y
	movz x4, 340	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 189	 		// x3 es la coordenada de Y
	movz x4, 358	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 165	 		// x3 es la coordenada de Y
	movz x4, 380	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado
	mov x1, 3         			//seteo tamaño   (alto)
	mov x2, 3						// seteo tamaño  (ancho)
	movz x10, 0x00D9, lsl 16
	movk x10, 0xDFF9, lsl 00	   
	mov x3, 220	 		// x3 es la coordenada de Y
	movz x4, 300	// x4 es la coordenada de X
	mov x19, 4 					//bits per pixel 
	bl posicion
	bl RectanguloPintado

    //Edificio izquirda ATRAS?
    mov x1, 160         			//seteo tamaño   (alto)
    mov x2, 220					// seteo tamaño  (ancho)
    movz x10, 0x28, lsl 16
    movk x10, 0x4c4a, lsl 00	   
    mov x3, 80	    		// x3 es la coordenada de Y
    movz x4, 30			// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio izquirda delante 2?
    mov x1, 230         			//seteo tamaño   (alto)
    mov x2, 88					// seteo tamaño  (ancho)
    movz x10, 0x3c, lsl 16
    movk x10, 0x3c3c, lsl 00	   
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

    //ventana izquierda 5?
    mov x1, 90         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xF0, lsl 16
    movk x10, 0xF045, lsl 00	   
    mov x3, 280   		// x3 es la coordenada de Y
    movz x4, 20				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana izquierda 6?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xF0, lsl 16
    movk x10, 0xF045, lsl 00	   
    mov x3, 200   		// x3 es la coordenada de Y
    movz x4, 120				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado


    //ventana izquierda 7?
    mov x1, 80         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x2d, lsl 16
    movk x10, 0x3000, lsl 00	   
    mov x3, 120   		// x3 es la coordenada de Y
    movz x4, 20				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana izquierda 8?
    mov x1, 80         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x2d, lsl 16
    movk x10, 0x3000, lsl 00	   
    mov x3, 80   		// x3 es la coordenada de Y
    movz x4, 120				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana izquierda 9?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xFF, lsl 16
    movk x10, 0xFF45, lsl 00	   
    mov x3, 35   		// x3 es la coordenada de Y
    movz x4, 20				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana izquierda edificio trasero 1?
    mov x1, 70         			//seteo tamaño   (alto)
    mov x2, 30						// seteo tamaño  (ancho)
    movz x10, 0x2d, lsl 16
    movk x10, 0x3000, lsl 00	   
    mov x3, 100   		// x3 es la coordenada de Y
    movz x4, 190				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //Edificio derecha luz?
    mov x1, 160         			//seteo tamaño   (alto)
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

    //ventana derecha 1?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x2d, lsl 16
    movk x10, 0x3000, lsl 00	   
    mov x3, 120   		// x3 es la coordenada de Y
    movz x4, 410				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 2?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xF0, lsl 16
    movk x10, 0xF045, lsl 00	   
    mov x3, 120   		// x3 es la coordenada de Y
    movz x4, 500				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 3?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x2d, lsl 16
    movk x10, 0x3000, lsl 00	   
    mov x3, 120   		// x3 es la coordenada de Y
    movz x4, 590				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 4?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xFF, lsl 16
    movk x10, 0xFF45, lsl 00	   
    mov x3, 200   		// x3 es la coordenada de Y
    movz x4, 410				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 5?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0xFF, lsl 16
    movk x10, 0xFF45, lsl 00	   
    mov x3, 200   		// x3 es la coordenada de Y
    movz x4, 500				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    //ventana derecha 6?
    mov x1, 45         			//seteo tamaño   (alto)
    mov x2, 45						// seteo tamaño  (ancho)
    movz x10, 0x2D, lsl 16
    movk x10, 0x3000, lsl 00	   
    mov x3, 200   		// x3 es la coordenada de Y
    movz x4, 590				// x4 es la coordenada de X
    mov x19, 4 					//bits per pixel 
    bl posicion
    bl RectanguloPintado

    ldr lr,[sp]
    add sp,sp,#8
    br lr
