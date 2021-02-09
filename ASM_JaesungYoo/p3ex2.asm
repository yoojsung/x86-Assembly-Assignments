TITLE Chapter 3 Exercise part1

; This program adds and subtracts 32-bit integers.

INCLUDE Irvine32.inc

.code
main PROC
	mov	ax,80h	
	sub ax,20h
	sub ax,30h
	sub ax,10h

	call	DumpRegs
	exit
main ENDP
END main