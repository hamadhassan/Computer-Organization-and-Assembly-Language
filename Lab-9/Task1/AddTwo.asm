
Include Irvine32.inc

.data
	marks dword 80
	grade dword ?
	prompt byte "Enter your marks : ",0
	result byte "Your grade is : ",0

.code                               
                           
main proc
	;mov edx,offset prompt	; store the prompt message  "Enter your marks : " into edx
	;call writestring		; display the message
	;call readint			; take user input
	;mov eax,marks			; store user input into marks

	mov eax,marks	;It will delete after program compleation

	cmp eax,90				; evaluate the condition
	JA 	L1					; Jump if greater then 90 
	JE	L2					; jum if marks equal to 90
	cmp eax,80				; evaluate the condition
	JA 	L2					; Jum if marks greater than 80
	cmp eax,70				; evaluate the condition
	JA 	L3					; Jump if greater then 70 
	JLE	L4					; jum if marks less than or equal to 70
	
	L1: mov grade,10		; Your garde is A
	L2: mov grade,11		; Your garde is B
	L3: mov grade,12		; Your garde is C
	L4: mov grade,13		; Your garde is D

	mov edx, offset result	; store the prompt message "Your grade is : " into edx
	call writestring		; display the message 
	mov eax, grade			; mov the store user input into eax
	call writeint			; dispay the userinput

	invoke ExitProcess,0

main endp
end main



             



			