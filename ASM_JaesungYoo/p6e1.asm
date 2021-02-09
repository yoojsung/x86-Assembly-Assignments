	TITLE Chapter 6 exercise 1

	INCLUDE Irvine32.inc

	.data
	Array DWORD 50 DUP(?)
	Prints BYTE "Number of Negatives: ", 0

	.code
	main PROC
		mov ecx, 50
		mov esi, 0
		mov ebx, 0
	L1: 
		call Random32
		mov Array[esi], eax
		inc esi
		loop L1

		mov ecx, 50
		mov esi, 0

	L2: 
		mov eax, Array[esi]
		call WriteInt
		call Crlf
		cmp eax, 0
		jg skip
		inc ebx
	Skip:
		inc esi
		loop L2

		mov edx, offset Prints
		call WriteString
		mov eax, ebx
		call WriteInt 

	exit
	main ENDP
	END main