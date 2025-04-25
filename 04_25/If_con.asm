.model small
.stack 100h

.data
m1 db "Enter the Number: $"
m2 db "Hi $"
m3 db "Bye $"
n db 0


.code
start:

	mov ax,@data
	mov ds,ax
	
	mov dx,offset m1	;msg 1 print
	mov ah,09h
	int 21h
	
	mov ah,01h			;entering the number
	int 21h				;al=x
	
	mov dl,al			;dl=x(number)
	sub dl,48			;dl=x-48=
	mov n,dl			;n=x-48
	
	mov dl,10			;new line
	mov ah,02h
	int 21h
	
	cmp n,5				;check if n=5
	je msg1				;if yes print msg1
	jne msg2			;else print msg2
	
	msg1:
	mov dx,offset m2
	mov ah,09h
	int 21h
	jmp endn
	
	msg2:
	mov dx,offset m3
	mov ah,09h
	int 21h

	
	endn:
	mov ax,4c00h
	int 21h
	
end start