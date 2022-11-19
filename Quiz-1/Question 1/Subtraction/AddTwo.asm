.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	var1 word 6
	var2 word 4
.code
main proc
	mov bx,var1
	mov ax,var2
	sub bx,ax
	mov ax,bx
	invoke ExitProcess,0
main endp
end main