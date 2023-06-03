.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGH,   480
.equ BITS_PER_PIXEL, 32

.equ GPIO_BASE,    0x3f200000
.equ GPIO_GPFSEL0, 0x00
.equ GPIO_GPLEV0,  0x34

.globl main

// Pinta un píxel en el framebuffer con un color específico
// Entradas:
// - x0: Dirección base del framebuffer
// - x1: Coordenada x del píxel
// - x2: Coordenada y del píxel
// - x3: Valor de color (formato RGB8888)
pintarPixel:
    // Calcula la posición de memoria del píxel
    ldr x4, =SCREEN_WIDTH
    mul x5, x2, x4       // Calcula la posición de fila (y * SCREEN_WIDTH)
    ldr x4, =BITS_PER_PIXEL
    lsr x6, x4, #3       // Calcula la cantidad de bytes por píxel (BITS_PER_PIXEL / 8)
    mul x7, x1, x6       // Calcula la posición de columna (x * bytes por píxel)
    add x8, x0, x5, lsl #2  // Calcula la posición de memoria final (base + (fila * SCREEN_WIDTH * 4))
    add x8, x8, x7       // Añade la posición de columna a la posición de memoria final

    // Almacena el valor de color en el píxel
    str x3, [x8]

    ret

main:
	// x0 contiene la direccion base del framebuffer
	mov x20, x0 // Guarda la dirección base del framebuffer en x20
	//---------------- CODE HERE ------------------------------------

	mov x1, #100
	mov x2, #200
	mov x3, #0xFF0000
	b pintarPixel
    // ---------------------------------------------------
	// Infinite Loop

InfLoop:
	b InfLoop
