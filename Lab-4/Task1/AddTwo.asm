; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	valA DWORD 17
	valB DWORD 6
	valC DWORD 9
	valD DWORD 3
	op1 DWORD 0
	op2 DWORD 0
	result DWORD 0
.code
main proc
	; store in register
	mov EAX,valA
	mov EBX,valB
	mov ECX,valC
	mov EDX,valD
	; perform operations
	add EAX,EBX
	add ECX,EDX
	sub EAX,ECX
	; result of A = (A + B) ? (C + D).
	mov result,EAX
	invoke ExitProcess,0
main endp
end main