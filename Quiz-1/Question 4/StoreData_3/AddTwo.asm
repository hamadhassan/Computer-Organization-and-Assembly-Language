Include Irvine32.inc

.code
main proc
	mov	edx,-65511h				
	movzx eax,dl
	call WriteInt
	movzx eax,dh
	call WriteInt
	movzx eax,dx
	call WriteInt
	invoke ExitProcess,0
main endp
end main