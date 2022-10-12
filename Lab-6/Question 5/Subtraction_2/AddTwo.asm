Include Irvine32.inc

.data
	var1 DWORD -50
	var2 DWORD -60
.code
main proc
	mov  eax,var1
    mov  ebx,var2
    imul eax,ebx      
	call WriteInt
	invoke ExitProcess,0
main endp
end main