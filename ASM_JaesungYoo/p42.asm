TITLE  Addition and Subtraction        (AddSub3.asm)

; Chapter 4 example. Demonstration of ADD, SUB,
; INC, DEC, and NEG instructions, and how
; they affect the CPU status flags.

INCLUDE Irvine32.inc

.data
Rval   SDWORD ?
Xval   SDWORD 26
Yval   SDWORD 30
Zval   SDWORD 40

Aval   SDWORD 30
Bval   SDWORD 26
Cval   SDWORD 11
Dval   SDWORD 23
Eval   SDWORD ?

.code
main PROC
	; INC and DEC
	mov	ax,1000h
	inc	ax		; 1001h
	dec	ax		; 1000h

	; Expression: Rval = -Xval + (Yval - Zval)
	mov	eax,Xval
	neg	eax		; -26
	mov	ebx,Yval
	sub	ebx,Zval	; -10
	add	eax,ebx
	mov	Rval,eax	; -36

	; Zero flag example:
	mov	cx,1
	sub	cx,1		; ZF = 1
	mov	ax,0FFFFh
	inc	ax		; ZF = 1

	; Sign flag example:
	mov	cx,0
	sub	cx,1		; SF = 1
	mov	ax,7FFFh
	add	ax,2		; SF = 1

	; Carry flag example:
	mov	al,0FFh
	add	al,1		; CF = 1,  AL = 00

	; Overflow flag example:
	mov	al,+127
	add	al,1		; OF = 1
	mov	al,-128
	sub	al,1		; OF = 1
	
	; Expression: Eval = -(Aval - Bval) + (Aval - -Dval) - (Dval + Cval)
	; Eval = 15d or Fh
	mov eax,Aval
	sub eax,Bval
	neg eax
	mov ebx,Aval
	mov ecx,Dval
	neg ecx
	sub ebx,ecx
	add eax,ebx
	mov ebx,Dval
	add ebx,Cval
	sub eax,ebx
	mov Eval,eax
	
	mov ecx,Eval

	mov edx,00000000h
	dec edx			; SF = 1
	inc edx			; ZF = 1

	call DumpRegs

	exit
main ENDP
END main