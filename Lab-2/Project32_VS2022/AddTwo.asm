; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
	mov ah,8
	;mov eax,7
	;add eax,ah
	movzx eax,ah
	invoke ExitProcess,0
main endp
end main