Include Irvine32.inc

.data
	intArray1 WORD 10,20,30,40,50,60,70,80,90,100
	listSize = ($ - intArray1)/2
	numberofElement= ($ - intArray1)/2
.code
main proc
	mov eax,listSize
	mov ebx,numberofElement
	call WriteInt
	invoke ExitProcess,0
main endp
end main