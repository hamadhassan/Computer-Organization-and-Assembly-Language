Include Irvine32.inc
.data

.code
main PROC
	mov EAX,123
	mov EBX,EAX
	shl EAX,6 ; multiply by 2^6 (64)
	INVOKE ExitProcess,0s
main ENDP
END main