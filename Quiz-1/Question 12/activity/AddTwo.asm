Include Irvine32.inc

.data
	var1 DWORD 12345678h
.code
main proc
	mov esi,OFFSET var1
	call WriteInt
	invoke ExitProcess,0
main endp
end main