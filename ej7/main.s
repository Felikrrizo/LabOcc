	.data
	Array: .dword 0x64, 0xc8, 0x12c
	contenido_X0: .dword 0xA
	.text
	LDR X6, =Array
	LDR X0, contenido_X0
    	

	ADD X9, X6, #8
    	ADD  X10, X6, XZR
    	STUR X10, [X9, #0]
    	LDUR X9, [X9, #0]
    	ADD  X0, X9, X10

end:
infloop: B infloop
