    org $2000

SAVMSC = $0058

	ldy #0
loop
	lda mensaje, y
	sta (SAVMSC), y
	iny
	cpy #11
	bne loop	

	jmp *

mensaje
	.byte "HOLA MUNDO!"
