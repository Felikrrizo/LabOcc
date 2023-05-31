	.equ SCREEN_WIDTH,   640
	.equ SCREEN_HEIGH,   480
	.equ BITS_PER_PIXEL, 32

	.equ GPIO_BASE,    0x3f200000
	.equ GPIO_GPFSEL0, 0x00
	.equ GPIO_GPLEV0,  0x34

	.globl main

main:
	// x0 contiene la direccion base del framebuffer
	mov x1, x0 // Guarda la dirección base del framebuffer en x1
	//---------------- CODE HERE ------------------------------------
	ldr x2, =0xC7E00000 // Carga el valor inmediato 0xC7E00000 en x2

	mov x3,SCREEN_HEIGH // guardo en x2 la altura (y) de la pantalla (framebuffer)
	mov x4,SCREEN_WIDTH // guardo en x1 la anchura (x) de la pantalla (framebuffer)

	///////////////////////////////////////////////////MARCO DE COLOR NEGRO ////////////////////////////////////////////////
	//linea superior//
	mov x0,x1
	loop_superior:
	str w2, [x0] //Puntero que apunta a w10, coloreo el pixel de arriba 
	add x0, x0 , #4 // siguiente pixel
	sub x4,x4, #1 // Resto 1 al contador de pixeles de X(ansub x0, x0, SCREEN_WIDTH * 4  // Fila anteriorchura) para hacer el ciclo y pintar toda la parte de arriba 
	cbnz x4, loop_superior // sino termino la fila, vuelvo

	//linea inferior
	//mov x0, x1 + ((SCREEN_HEIGH-1)* SCREEN_WIDTH * 4) //me paro en el ultimo pixel de la ultima fila
	sub x4, x4, #1             // Resta 1 al contador de pixeles de X(anchura) para hacer el ciclo y pintar toda la parte de arriba
	mov x5, #4                 // Carga 4 en x5 (bytes por píxel)
	lsl x5, x5, #9             // Desplaza x5 9 bits a la izquierda (equivalente a multiplicar por 512)
	sub x5, x5, #4             // Resta 4 a x5 para considerar el desplazamiento de la última fila
	sub x0, x0, x5             // Resta x5 de x0 para desplazarse a la fila anterior

	loop_inferior:
	str x2,[x0] //Puntero que apunta a w10, coloreo el pixel de arriba 
	sub x0, x0 , #4 // siguiente pixel
	sub x4,x4, #1 // Resto 1 al contador de pixeles de X(anchura) para hacer el ciclo y pintar toda la parte de arriba 
	cbnz x4, loop_inferior // sino termino la fila, vuelvo

	//linea izquierda
	//mov x0,x1 + (SCREEN_WIDTH * 4) //me paro en el primer pixel de la segunda fila
	sub x5, SCREEN_HEIGHT, #1 // Resta 1 a SCREEN_HEIGHT
	lsl x5, x5, #9            // Desplaza x5 9 bits a la izquierda (equivalente a multiplicar por 512)
	mul x5, x5, SCREEN_WIDTH  // Multiplica x5 por SCREEN_WIDTH
	sub x5, x5, #4            // Resta 4 a x5 para considerar el desplazamiento de la última fila
	add x0, x1, x5            // Suma x5 a x1 para llegar al último pixel de la última fila

	mov x2, SCREEN_HEIGH - 2 // resto esos 2 para no pintar las esquinas
loop_izquierda:
	str x2,[x0] // coloreo el pixel izquierdo
	add x0,x0,SCREEN_WIDTH * 4 //paso a la siguiente fila
	sub x4,x4, #1 // decremnto el contador a altura, para recorrer todo en el ciclo
	cbnz x4,loop_izquierda //sino es la ultima fila, vuelvo al loop

//linea derecha
	//mov x0,x1 + ((SCREEN_WIDTH - 1) * 4) // me paro en el ultimo pixel derecho
	mov x5, #4                 // Carga 4 en x5 (bytes por píxel)
	mul x5, x5, SCREEN_WIDTH   // Multiplica 4 por SCREEN_WIDTH
	sub x0, x0, x5             // Resta x5 de x0 para pasar al pixel anterior en la misma fila

	mov x2, SCREEN_HEIGH - 2 // resto esos 2 para no pintar la esquina
loop_derecho:
	str x2,[x0] // coloreo el pixel derecho
	sub x0,x0,SCREEN_WIDTH * 4 //  
	sub x4,x4, #1  // decremnto el contador a altura, para recorrer todo en el ciclo
	cbnz x4,loop_derecho //sino es la ultima fila, vuelvo al loop

//calulo el pixel
calcular_pixel:
	//params: x3 = x coord, x4 = y coord
	mov x0,640   // x0 = 640
	mul x0,x0,x4 // x0 = 640 * y
	add x0,x0,x3 // x0 = (640 * y) + x
	lsl x0,x0,2 // x0 = ((640 * y) + x)*4
	add x0,x0,x20 // x0 = ((640 * y) + x) * 4 + framebuffer[0]
ret











//hasta aca llega lo que estoy haciendo, abajo es lo que estaba creado
	movz x10, 0xC7, lsl 16
	movk x10, 0x1585, lsl 00

	mov x2, SCREEN_HEIGH         // Y Size
loop1:
	mov x1, SCREEN_WIDTH         // X Size
loop0:
	stur w10,[x0]  // Colorear el pixel N
	add x0,x0,4    // Siguiente pixel
	sub x1,x1,1    // Decrementar contador X
	cbnz x1,loop0  // Si no terminó la fila, salto
	sub x2,x2,1    // Decrementar contador Y
	cbnz x2,loop1  // Si no es la última fila, salto

	// Ejemplo de uso de gpios
	mov x9, GPIO_BASE

	// Atención: se utilizan registros w porque la documentación de broadcom
	// indica que los registros que estamos leyendo y escribiendo son de 32 bits

	// Setea gpios 0 - 9 como lectura
	str wzr, [x9, GPIO_GPFSEL0]

	// Lee el estado de los GPIO 0 - 31
	ldr w10, [x9, GPIO_GPLEV0]

	// And bit a bit mantiene el resultado del bit 2 en w10 (notar 0b... es binario)
	// al inmediato se lo refiere como "máscara" en este caso:
	// - Al hacer AND revela el estado del bit 2
	// - Al hacer OR "setea" el bit 2 en 1
	// - Al hacer AND con el complemento "limpia" el bit 2 (setea el bit 2 en 0)
	and w11, w10, 0b00000010

	// si w11 es 0 entonces el GPIO 1 estaba liberado
	// de lo contrario será distinto de 0, (en este caso particular 2)
	// significando que el GPIO 1 fue presionado

	//---------------------------------------------------------------
	// Infinite Loop

InfLoop:
	b InfLoop
