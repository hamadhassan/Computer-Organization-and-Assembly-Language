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
	mov	eax,5				
	mov	ebx,4
	mul ebxs
	mov op1,eax

	mov eax,3
	add eax,7
	mov op2,eax

	mov eax,op1
	sub eax,op2
	mov op3,eax

	mov eax,21
	mov ebx,op3
	mul ebx
	mov result,eax

	invoke ExitProcess,0
main endp
end main