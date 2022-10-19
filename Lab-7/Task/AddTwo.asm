Include Irvine32.inc
.data
	myArray1 BYTE 1,2,3,4,5
	array1Size = ($ - myArray1) - 1
.code
main PROC
	mov al,[myArray1]
	MOV CX, 0004
	ROL AL, CX
	MOV [2050], AL
	HLT

	call WriteString
INVOKE ExitProcess,0
main ENDP
END main