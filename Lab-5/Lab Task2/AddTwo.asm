Include Irvine32.inc
.data
	array1 Byte "Hello World",0
	array2 Byte "ABCGHI XYZ"
.code
main proc
	mov al,array1
	mov ah,array2
	mov bl,al
	mov bh,ah
	mov al,bh ; now array2 
	mov ah,bl ; now array1
	Call WriteInt
invoke ExitProcess,0 
main endp
end main