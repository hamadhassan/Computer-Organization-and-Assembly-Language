; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	list BYTE 10,20,30,40
	myString BYTE "This is a long string."
	Var2 BYTE 20 DUP(?)
	ListSize = ($ - myString)
	count=10
.code
main proc
	mov eax,count
	mov	eax,1
    mov ax,5
	mov ah,3
	mov ax,2
	add	eax,6			
	invoke ExitProcess,0
main endp
end main