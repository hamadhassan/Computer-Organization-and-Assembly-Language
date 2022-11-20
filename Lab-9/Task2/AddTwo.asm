Include Irvine32.inc
.data
	array DWORD 648B2165h,8C943A29h,6DFA4B86h,91F76C04h,8BAF9857h
.code
main proc
	mov BL,4 ; shift count
	mov ESI,OFFSET array ; offset of the array
	mov ECX,(LENGTHOF array) - 1 ; number of array elements
L1:
	push ECX ; save loop counter
	mov EAX,[ESI + TYPE DWORD]
	mov CL,BL ; shift count
	SHRD [ESI],EAX,CL ; shift EAX into high bits of [ESI]
	add ESI,TYPE DWORD ; point to next doubleword pair
	pop ECX ; restore loop counter
	LOOP L1
	SHR DWORD PTR [ESI],4 ; shift the last doubleword
exit
main endp
end main