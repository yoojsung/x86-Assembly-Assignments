	TITLE Chapter 6 While Loop [random]

	INCLUDE Irvine32.inc

	.data
	val1	BYTE	?
	val2	BYTE	?

	.code
	main PROC
		mov esi, offset val1
		mov edi, offset val2
		mov	eax,100		; values 0-99
		call	RandomRange	; generate random int
		mov [esi], eax
		mov	eax,100		; values 0-99
		call	RandomRange	; generate random int
		add eax, 200
		mov [edi], eax

		movzx eax, val1 
		movzx ebx, val2
		mov ecx, 0
	beginwhile:
		cmp	eax, ebx
		jnl endwhile
		inc eax
		dec ebx
		inc ecx
		jmp beginwhile
	endwhile: 
		mov [esi], eax
		mov [edi], ebx

		movzx eax, val1
		call WriteInt
		call Crlf
		movzx eax, val2
		call WriteInt
		call Crlf
		mov eax, ecx
		call WriteInt

		exit
	main ENDP
	END main