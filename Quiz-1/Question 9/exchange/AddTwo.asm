Include Irvine32.inc

.data
	var1 DWORD 1
	var2 DWORD 2
.code
main proc
	mov ecx,[var1]
    mov ebx,[var2]
	mov var1,ebx
	mov var2,ecx
	mov eax,var1
	mov ebx,var2
	sub eax,ebx

	mov ecx,[var1]
    mov ebx,[var2]
	mov var1,ebx
	mov var2,ecx
	mov eax,var1
	mov ebx,var2
	add ebx,eax

	call WriteInt
	invoke ExitProcess,0
main endp
end main