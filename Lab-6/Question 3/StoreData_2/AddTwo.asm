Include Irvine32.inc

.code
main proc
	mov edx,10010001h
	mov al,dl
	call WriteInt
	mov ah,dh
	call WriteInt
	mov ax,dx
	call WriteInt
	invoke ExitProcess,0
main endp
end main