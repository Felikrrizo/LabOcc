.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGHT,  480
.equ SCREEN_HALF_HEIGHT, 240
.equ BITS_PER_PIXEL, 32

.equ GPIO_BASE,    0x3f200000
.equ GPIO_GPFSEL0, 0x00
.equ GPIO_GPLEV0,  0x34

.global llover

llover:
    sub sp, sp, #8
    str lr, [sp]

    bl funcionLoca

    ldr lr,[sp]
    add sp,sp,#8
    br lr

// x1 tamanio de gota
// x2 ancho de la gota
// recibe x3 para su imprimir su altura
primerSprite:
    sub sp, sp, #8
    str lr, [sp]

    // x4 es la coordenada de X
    franja: 
        movz x10, 0x8c, lsl 16
        movk x10, 0xcdfb, lsl 00	   
        mov x19, 4 					//bits per pixel 
        bl posicion
        bl RectanguloPintado

        cmp x4,#640
        bgt exit

        add x4,x4,20

        b franja

    exit:
        ldr lr,[sp] 
        add sp,sp,#8
        br lr

funcionLoca:
    sub sp, sp, #8
    str lr, [sp]

    movz x3, 0
    looploco:
        movz x24, 0xFF2,lsl 16
        bl Delay 

        mov x1, 10      // alto
        mov x2, 6       // ancho
        add x3,x3,10
        movz x4, 0      // pos x
        bl primerSprite

        // agregar delay
        movz x24, 0xFF2,lsl 16
        bl Delay 

        

        mov x1, 15      // alto
        mov x2, 3       // ancho
        add x3,x3,#15
        movz x4, 15     // pos x
        bl primerSprite
        
        // agregar delay
        movz x24, 0xFF2,lsl 16
        bl Delay 

        

        mov x1, 8      // alto
        mov x2, 4       // ancho
        add x3,x3,20
        movz x4, 12     // pos x
        bl primerSprite

        

        cmp x3,#480
        bgt exit

        b looploco

    exitloco:
        ldr lr,[sp] 
        add sp,sp,#8
        br lr
