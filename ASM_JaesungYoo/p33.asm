TITLE Add and Subtract          (AddSub.asm)

; This program adds and subtracts 32-bit integers.

INCLUDE Irvine32.inc

.code
main PROC

	mov	eax,10000h		; EAX = 10000h
	add	eax,40000h		; EAX = 50000h
	sub	eax,20000h		; EAX = 30000h
	
	mov ebx,11010b		; EBX = 11010b
	sub ebx,100b		; EBX = 10110b

	jmp location

	add ebx,5d			; jumps over so nothing happens

	location:
	mov ecx,10b			; ECX = 10b
	add ebx,ecx			; EBX = 11000b
	mul ecx				; EAX = 60000h

	call	DumpRegs

	exit
main ENDP
END main