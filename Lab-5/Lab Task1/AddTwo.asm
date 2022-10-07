Include Irvine32.inc
.data
	var1 WORD 50 DUP(5)
.code
main proc
	mov eax, SIZEOF var1 ; eax = 100 after conversion equal to 64
	mov eax, LENGTHOF var1 ; eax =50 after conversion equal to 50 
	mov ax, [var1+99]
invoke ExitProcess,0 
main endp
end main