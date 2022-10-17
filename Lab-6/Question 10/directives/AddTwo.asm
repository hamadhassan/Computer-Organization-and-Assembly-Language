Include Irvine32.inc

.data
	const1 TEXTEQU %5
	const2 TEXTEQU %6
	var1 BYTE const1
	array1 BYTE 5 DUP(const2)
.code
main proc
	mov al,var1
	mov ah,[array1+4]
	add al,ah
	call WriteInt
	invoke ExitProcess,0
main endp
end main