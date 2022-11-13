
Include Irvine32.inc

.data
	myArray SDWORD -8, 6, 5, 10, -22, 0, 87, 6, 9, -90

.code                               
                           
main PROC
	moc e
	.WHILE eax < ebx
		inc eax
		.IF eax == ecx
			mov X,2
		.ELSE
			mov X,3
	.ENDIF
	.ENDW
exit
	
	invoke ExitProcess,0

main endp
end main



             



			