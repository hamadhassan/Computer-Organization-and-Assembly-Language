
Include Irvine32.inc

.data
	var1 WORD 1000h
	var2 WORD 2000h     

.code                               
                           
main proc
	xchg ax,bx ; exchange 16-bit regs
	xchg ah,al ; exchange 8-bit regs
	xchg var1,bx ; exchange mem, reg
	xchg eax,ebx ; exchange 32-bit regs
	invoke ExitProcess,0

main endp
end main



             



			