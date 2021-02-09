	TITLE Chapter 6 exercise 7

	INCLUDE Irvine32.inc

	.data
	Menum BYTE "1. X AND Y",0dh,0ah
		BYTE "2. X OR Y"      ,0dh,0ah
		BYTE "3. NOT X"       ,0dh,0ah
		BYTE "4. X XOR Y"     ,0dh,0ah
		BYTE "5. Exit program",0

	ANDp BYTE "X AND Y", 0
	ORp  BYTE "X OR Y", 0
	NOTp BYTE "X NOT", 0
	XORp BYTE "X XOR Y", 0

	val1 BYTE "X in hex: ",0
	val2 BYTE "Y in hex: ",0
	Res  BYTE "Result: ",0
	Errorm BYTE "Error. Try again", 0

	.code
	main PROC

	start:
		mov edx, offset Menum		; menu 
		call WriteString			
		call Crlf				
		call ReadChar			
		call Crlf		
		cmp al, '5'					; checks for error
		ja errormsg					 
		cmp al, '1'
		jb errormsg					
		cmp al, '5'
		jz quit
		cmp al, '3'
		ja xorl
		cmp al, '2'
		ja notl
		cmp al, '1'
		ja orl
		cmp al, '0'
		ja andl 

	andl:
		mov edx, offset ANDp		
		call WriteString			; and function
		call Crlf

		mov edx, offset val1	
		call WriteString
		call ReadHex			
		mov ebx, eax			

		mov edx, offset val2	
		call WriteString
		call ReadHex			

		and eax, ebx			

		mov edx, offset Res	
		call WriteString			
		call WriteHex			
		call Crlf

		jmp start				

	orl:
		mov edx, offset ORp		
		call WriteString			
		call Crlf

		mov edx, offset val1	
		call WriteString
		call ReadHex			
		mov ebx, eax			

		mov edx, offset val2	
		call WriteString
		call ReadHex			

		or eax, ebx			

		mov edx, offset Res	
		call WriteString			
		call WriteHex			
		call Crlf

		jmp start				

	notl:
		mov edx, offset NOTp		
		call WriteString			
		call Crlf

		mov edx, offset val1	
		call WriteString
		call ReadHex			

		not eax			

		mov edx, offset Res	
		call WriteString			
		call WriteHex			
		call Crlf

		jmp start				

	xorl:
		mov edx, offset XORp		
		call WriteString			
		call Crlf

		mov edx, offset val1	
		call WriteString
		call ReadHex			
		mov ebx, eax			

		mov edx, offset val2	
		call WriteString
		call ReadHex			

		xor eax, ebx			

		mov edx, offset Res	
		call WriteString			
		call WriteHex			
		call Crlf

		jmp start				

	errormsg:						;displays the error message
		mov edx, offset Errorm
		call WriteString
		Call Crlf
		jmp start

	quit: exit
	main ENDP
	END main