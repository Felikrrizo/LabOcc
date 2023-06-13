.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGHT,  480
.equ SCREEN_HALF_HEIGHT, 240
.equ BITS_PER_PIXEL, 32

.equ GPIO_BASE,    0x3f200000
.equ GPIO_GPFSEL0, 0x00
.equ GPIO_GPLEV0,  0x34

.globl main

main:
    sub sp, sp, #8
    str lr, [sp]

loopdia:
    mov x22, GPIO_BASE
    str wzr, [x22, GPIO_GPFSEL0]
    ldr w10, [x22, GPIO_GPLEV0]

    and w17, w10, 0b00000010 // w
	cbnz w17, dia  // Saltar a pintar_dia si la condición se cumple
    
    and w18, w10, 0b00000100 // a 
    cbnz w18, derrumbar

    and w23, w10, 0b00001000 // s
	cbnz w23, noche 

    and w18, w10, 0b00010000 // d
    cbnz w18, lluvia

    

    b loopdia
    
dia:
    mov x26, 0  
    bl pintar_dia
    ldr lr,[sp]
    add sp,sp,#8
    br lr
    
    b loopdia

noche:
    mov x26, 1
    bl pintar_noche
    ldr lr,[sp]
    add sp,sp,#8
    br lr
    b loopdia

derrumbar: 
    cmp x26, 0
    beq derrumbe
    ldr lr,[sp]
    add sp,sp,#8
    br lr
    b loopdia

lluvia:
    cmp x26, 1
    beq llover
    ldr lr,[sp]
    add sp,sp,#8
    br lr
    b loopdia

