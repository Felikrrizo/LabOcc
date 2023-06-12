	
.equ SCREEN_WIDTH   ,   640
.equ SCREEN_HEIGHT ,    480
.globl RectanguloPintado, posicion, circulo, triangulo,fun_delay

//------------- FUNCIONES -----------------------------------------------------------------------------------
fun_delay:
	mov x9,x8

	delay:
		sub x9,x9,1
		cbnz x9,delay
ret

// Rectangulo y cuadrado
RectanguloPintado:
mov x14, x1 				//salvo en x14 el alto 
siguiente:
	mov x15, x2        		//salvo en x15 el largo
raya:
	stur w10,[x0]	   		// Seteo el color del pixel N
	add x0,x0,4	   			// proximo pixel
	sub x15,x15,1	   		// decrement X counter
	cbnz x15, raya	 		//si no termine de pintar la primera raya pinto el proximo pixel 
	sub x14, x14, 1 		//decrement y counter 
	msub x0, x19, x2, x0    //vuelvo al principio de la linea x0 - x2 * 4	= x0	
	madd x0, x21, x19, x0 	//muevo el puntero al inicio de la proxima linea (640*4+x0)=x0
	cbnz x14, siguiente	


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

//triangulo
triangulo:
// 	Parametros:
		// 	w10 -> Color.
		//	x1 -> Ancho.
		//  x2 -> Cantidad de filas a pintar antes de disminuir en 1 su valor (Altura = x1 * x2).
		// 	x3 -> Pixel X.
		// 	x4 -> Pixel Y.

		SUB SP, SP, 8 						// Apuntamos en el stack.
		STUR X30, [SP, 0]					// Salvamos en el stack el registro de retorno (x30).
		BL posicion 			// Calculamos el pixel a dibujar con la función "calcular_pixel". Retorna x0.
		LDR X30, [SP, 0]					// Le asignamos x30 su posición de retorno desde el stack. (Anteriormente fue pisada al llamar calcular_pixel). 			
		ADD SP, SP, 8						// Dejamos el stack como antes.
		
		// Usamos los registros temporales: x9, x11, x12, x13
		mov x13, x0							// x13 = x0 --> A x13 le guardamos la posición de x0 calculada.
		mov x14, x1							// x14 = x1 --> A x14 le asignamos el ancho de la fila.
		
		pintar_triangulo:
			mov x15, x2							// x15 = x2  --> A x15 le asignamos la cantidad de filas a pintar antes de disminuir el ancho de la fila actual.
			pintar_fila:
				mov x11, x14					// x11 = x14 --> A x11 le asignamos el ancho de la fila.
				mov x12, x13					// x12 = x13 --> A x12 le guardamos x13 (En esta parte de la ejecucción a x12 se le guarda el pixel inicial de la fila).
				
				color_triangulo:
					stur w10, [x13]				// Memory[x13] = w10 --> A x13 le asignamos en memoria el color que respresenta w10.
					add x13, x13, 4				// w13 = w13 + 4 --> x13 se mueve un pixel hacia la derecha.
					sub x11, x11, 1				// w11 = w11 - 1 --> x11 le restamos un pixel de ancho.
					cbnz x11, color_triangulo	// Si x11 <= 0 (la fila no se termino de pintar), seguimos pintandola.
					
				mov x13, x12					// En esta parte, ya se termino de pintar la fila. x13 = x12. Volvemos al pixel de origen de la fila.
				sub x13, x13, 2560				// Pasamos a la siguiente fila.
				sub x15, x15, 1					// x15 = x15 - 1. Le restamos 1 a x15 para pintar al siguiente fila del mismo ancho que la anterior.
				cbnz x15, pintar_fila
				
				mov x13, x12				// En esta parte, ya se termino de pintar la fila. x13 = x12. Volvemos al pixel de origen de la fila.
				add x13, x13, 2564			// x13 = x13 + 2562. La constante 2560 es el total de pixeles de una fila, el numero 4 que se suma a 2560 sirve para movernos 
											//	1 pixel (4 posiciones) hacia la derecha. entonces si lo sumamos es como dar un salto de linea movido 1 pixeles a la derecha.
				sub x14, x14, 2				// x14 = x14 - 2. A x14 le restamos 2 para disminuir el ancho de la siguiente fila en 1 pixel.
				cbnz x14, pintar_triangulo
ret

//circulo

circulo://radio x7, pos centro en eje x en x8, pos centro en eje y en x9
	sub sp, sp, #72 
	str x0,[sp,#0]
	str x1,[sp, #8]
	str x5, [sp, #16]
	str x30, [sp, #24]
	str x11, [sp, #32]
	str x12, [sp, #40]
	str x13, [sp, #48]
	str x14, [sp, #56]
	str x6, [sp, #54]
	sub x11, x8, x7//x11=y-r
	sub x13, x9, x7//x13=x-r
	add x12, x8, x7//x12=y+r
	add x14, x9, x7//x14=x+r
	cmp x11, xzr
	blt aux_0
vuelvo_de_aux_0:
	mov x5, SCREEN_HEIGHT 
	cmp x12, x5
	bgt aux_MAX
vuelvo_de_aux_MAX:
    mov x1, x11   // x1 = altura inicial
	mul x7, x7, x7 // x7=r²
        circle_row_loop:
            mov x0, x13  // x0 = ancho inicial

            circle_column_loop:
				sub x5, x0, x9//x5=(ancho-x)
				mul x5, x5, x5//x5=(ancho-x)²
				sub x6, x1, x8//x6=(altura-y)
				mul x6, x6, x6//x6=(altura-y)²
				add x5, x6, x5//x5=(ancho-x)² + x6=(altura-y)²
				cmp x5, x7//(ancho-x)² + x6=(altura-y)² <= r²
				ble aux_paint
			vuelvo_de_aux_paint:

                add x0, x0, #1          // Incrementar el valor de ancho
                cmp x0, x14            // Comparar el valor de ancho con el valor final
                blt circle_column_loop

            add x1, x1, #1          // Incrementar el valor de altura
            cmp x1, x12            // Comparar el valor de altura con el valor final
            blt circle_row_loop
	ldr x0,[sp,#0]
	ldr x1,[sp, #8]
	ldr x5, [sp, #16]
	ldr x30, [sp, #24]
	ldr x11, [sp, #32]
	ldr x12, [sp, #40]
	ldr x13, [sp, #48]
	ldr x14, [sp, #56]
	ldr x6, [sp, #64]
	add sp, sp, #72
    ret //ojo que la funcion cambia los valores de x0,x1,x2 y x5, si hace falta mantenerlos despues los mandamos al stack y devolvemos

	aux_0://pone un 0 en x11
	mov x11, 0x0
	b vuelvo_de_aux_0

aux_MAX:
	mov x12, SCREEN_HEIGHT
	b vuelvo_de_aux_MAX

aux_paint:
	BL paint_pixel
	b vuelvo_de_aux_paint


paint_pixel://colorea el pixel (x0, x1) con el color en x10
	sub sp, sp, #8
	str x5, [sp, #0]
	mov x5, SCREEN_WIDTH
    mul x5, x1, x5         // x5 = altura * SCREEN_WIDTH
    add x5, x5, x0         // x5 = altura * SCREEN_WIDTH + ancho
    lsl x5, x5, #2         // x5 = (altura * SCREEN_WIDTH + ancho) * 4 (para convertir a bytes)
    add x5, x5, x20        // x5 = dirección base del framebuffer + (alto * SCREEN_WIDTH + ancho) * 4
    stur w10, [x5]         // Almacenar el valor de color en la dirección de memoria del píxel
	ldr x5, [sp, #0]       // devuelvo el valor original de x5
	add sp, sp, #8		   // regreso el valor de sp
ret
