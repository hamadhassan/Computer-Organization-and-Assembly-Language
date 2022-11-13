
Include Irvine32.inc

.data
	myVar dword ?
	prompt byte "Enter your marks : ",0
	result byte "Your grade is : ",0

.code                               
                           
main proc
	mov edx,offset prompt	; store the prompt message  "Enter your marks : " into edx
	call writestring		; display the message
	call readint			; take user input

	mov myvar,eax			; store user input into myvar

	mov edx, offset result	; store the prompt message "Your grade is : " into edx
	call writestring		; display the message 
	mov eax, myvar			; mov the store user input into eax

	call writeint			; dispay the userinput

	invoke ExitProcess,0

main endp
end main



             



			