TITLE Binary Multiplication & Division         (BMult.asm)

; This program demonstrates binary multiplication and division using SHL and SHR.

INCLUDE Irvine32.inc

.data
intval1  DWORD  123
intval2  DWORD  4400
intval3  DWORD  322

prompt1 BYTE "(intval1 * 32) / 8", 0 ; equals 492
prompt2 BYTE "(intval2 / 4) / 2 + (intval3 / 32)", 0 ; equals 285
prompt3 BYTE "(intval3 / 16) * 4", 0 ; equals 80

.code
main PROC
	
	mov edx, offset prompt1
	call writestring
	call Crlf
	mov	eax, intval1
	shl	eax, 5		; multiply by 32
	shr	eax, 3		; divide by 8
	call writeint
	call Crlf
	call Crlf

	mov edx, offset prompt2
	call writestring
	call Crlf
	mov	eax, intval2
	shr	eax, 2		; multiply by 32
	shr	eax, 2		; divide by 8
	mov ebx, intval3
	shr ebx, 5
	add eax, ebx
	call writeint
	call Crlf
	call Crlf
	
	mov edx, offset prompt3
	call writestring
	call Crlf
	mov	eax, intval3
	shr	eax, 4		; multiply by 32
	shl	eax, 2		; divide by 8
	call writeint
	call Crlf

	exit
main ENDP
END main