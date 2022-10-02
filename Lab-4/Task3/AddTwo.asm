; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	Mon EQU <"Monday",0>
	Tue EQU <"Tueaday",0>
	Wed EQU <"Wednesday",0>
	Thur EQU <"Thursday",0>
	Fri EQU <"Friday",0>
	Sat EQU <"Saturday",0>
	Sun EQU <"Sunday",0>
	list DWORD 
		Mon,Tue,Wed,Thur,Fri,Sat,Sun
.code
main proc
	
	invoke ExitProcess,0
main endp
end main