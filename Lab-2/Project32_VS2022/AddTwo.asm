.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
Rval SDWORD ?
Xval SDWORD 26
Yval SDWORD 30
Zval SDWORD 40
.code
main PROC
	mov al,+127
	add al,1 ; OF = 1
	mov al,-128
	sub al,-1 ; OF = 0
	INVOKE ExitProcess,0
main ENDP
END main