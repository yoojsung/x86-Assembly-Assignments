TITLE  Chapter 5 exercise 6

INCLUDE Irvine32.inc
.data
char    BYTE "Y",0

.code
main PROC
	mov	edx, OFFSET char
	mov ecx, 16
	mov esi, 0
	mov edi, 0
L1: 
	push ecx
	mov ecx, 16
	L2:
		mov	eax, esi
		call	SetTextColor
		call	WriteString
		inc esi
		loop L2
	pop ecx
	loop L1
	call	Crlf
	mov eax, 2 + black * 16
	call	SetTextColor
	exit
main ENDP
END main