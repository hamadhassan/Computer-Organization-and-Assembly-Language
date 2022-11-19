
Include Irvine32.inc

.data
	var1 WORD 1
	var2 WORD 55h
	sum  WORD 0
	array1 BYTE 5 DUP(?)             

.code                               
                           
main proc
	mov ax,var1
	mov bx,var2
	add ax,bx
	mov sum,ax
	mov ax,0
	imul ax,bx
	mov dl,array1
	invoke ExitProcess,0

main endp
end main



             



			