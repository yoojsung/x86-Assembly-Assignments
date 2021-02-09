TITLE  Chapter 5

INCLUDE Irvine32.inc
.code
main PROC
        call MsgBox
        call MsgBoxAsk
        mov eax, 22
        neg eax
        call WriteInt
        mov ebx, 100h
        call DumpRegs
        exit        
main ENDP
END main