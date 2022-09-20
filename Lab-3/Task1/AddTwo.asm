; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	sum DWORD 0
	op1 DWORD 0
	op2 DWORD 0
	op3 DWORD 0
	result DWORD 0

.code
main proc
	mov	eax,10				
	sub	eax,7				
	mov op1,eax

	mov eax,5
	add eax,6
	mov op2,eax

	mov eax,op1
	mov ebx,op2
	mul ebx
	mov op3,eax

	mov eax,9
	mov ebx,op3
	mul ebx
	mov result,eax

	invoke ExitProcess,0
main endp
end main