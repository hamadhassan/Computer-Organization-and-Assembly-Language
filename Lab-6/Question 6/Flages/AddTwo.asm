Include Irvine32.inc

.code
main proc
	mov al,0FFh
	mov bl,1
	add al,bl 
	call WriteInt
	invoke ExitProcess,0
main endp
end main