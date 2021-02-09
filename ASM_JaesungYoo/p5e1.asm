TITLE  Chapter 5 exercise 1

INCLUDE Irvine32.inc
.data
hello    BYTE "Hello World!",0
Color	 BYTE 14, 1, 5, 3

.code
main PROC
	mov	edx, OFFSET hello
	mov ecx, 4
	mov esi, OFFSET Color
L: 
	mov	eax, [esi]
	call	SetTextColor
	call	WriteString
	call	Crlf
	inc esi
	loop L
	exit
main ENDP
END main