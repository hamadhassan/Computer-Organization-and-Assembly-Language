;INCLUDE Irvine32.inc
.data
	greeting1 BYTE "Hello World",0
	greeting2 BYTE 'Assembly Language',0
	sizeG1 = ($ - greeting1)
	sizeG2 = ($ - greeting2)
.code
main proc
	mov EAX, sizeG1
	mov EBX, sizeG2
	call WriteInt
exit
main endp
end main