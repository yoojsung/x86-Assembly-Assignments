TITLE  Chapter 4 Exercise part 7

INCLUDE Irvine32.inc
.data
	val1 SDWORD 8
	val2 SDWORD -15
	val3 SDWORD 20
.code
main PROC
	mov eax, val2	;eax = -15 or -F
	neg eax			;eax = 15 or F
	add eax, 7		;eax = 22 or 16
	sub eax, val3	;eax = 2 or 2
	add eax, val1	;eax = 10 or A

	call DumpRegs

	exit
main ENDP
END main