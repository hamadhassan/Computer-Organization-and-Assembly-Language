Include Irvine32.inc

.code
main proc
	mov eax,0FFFFFFFFh
	mov ebx,1
	sub eax,ebx 
	add eax,2
	invoke ExitProcess,0
main endp
end main