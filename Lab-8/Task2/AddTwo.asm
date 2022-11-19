Include Irvine32.inc
.data
	var1 DWORD 4
	var2 DWORD 6
	message1 BYTE "var1 is greater than var2",0
	message2 BYTE "var1 is less than var2",0
.code
main PROC
	mov EAX,var1
	.IF (EAX > var2 && EAX>var3)
		mov EDX,OFFSET message1
		call WriteString
	.ELSEIF EAX < var2
		mov EDX,OFFSET message2
	call WriteString
	.ENDIF
exit
main ENDP
end main