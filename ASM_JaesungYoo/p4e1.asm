TITLE  Chapter 4 Exercise part 1

INCLUDE Irvine32.inc

.code
main PROC
	mov ah,255		;ah = 255
	add ah,1		;CF = 1 ah = 0

	sub ah,1		;CF = 1
	sub ah,1		;CF = 0 off
	call DumpRegs

	exit
main ENDP
END main