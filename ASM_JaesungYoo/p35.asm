TITLE 3.5

; This program adds and subtracts 32-bit integers.

INCLUDE Irvine32.inc

.code
main PROC

	backspace = 08h
	SecondsInDay = 60 * 60 * 24
	myArray WORD 20 DUP(?)
	ArraySize = ($ - myArray)
	myArray2 DWORD 30 DUP(?)
	ArraySize2 = ($ - myArray2)/4

	mov EAX,ArraySize
	mov EBX,ArraySize2

	PROCEDURE TEXTEQU <PROC>
	call	DumpRegs

	exit
main ENDP
END main