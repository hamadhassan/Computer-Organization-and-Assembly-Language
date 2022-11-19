Include Irvine32.inc

.code
main proc
	mov	edx,0FFFA532Bh						
	mov al, dl
	mov bh,dh
	mov bx,dx
	call WriteInt
	invoke ExitProcess,0
main endp
end main