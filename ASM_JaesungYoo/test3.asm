TITLE Chapter 3 Test

; This program adds and subtracts 32-bit integers.

INCLUDE Irvine32.inc

.code
main PROC
	mov ecx, 1d
	mov edx, 3d
	add ecx, edx
	mov ebx, ecx
	sub ebx, edx
	mov eax, 10d

	call	DumpRegs
	exit
main ENDP
END main