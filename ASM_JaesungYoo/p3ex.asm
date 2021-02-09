TITLE Chapter 3 Exercise part3

; This program adds and subtracts 32-bit integers.

INCLUDE Irvine32.inc

.data 
	SUN = 0
	MON = 1
	TUE = 2
	WED = 3
	THU = 4
	FRI = 5
	SAT = 6
	days BYTE SUN, MON, TUE, WED, THU, FRI, SAT

.code
main PROC
	mov	eax,80000h	
	mov ebx,SAT
	call	DumpRegs
	exit
main ENDP
END main