.model small
.stack 100h

.data
m1 db "Enter a single digit: $"
m2 db "Even number! $"
m3 db "Odd number $"
n db 0
d db 2
r db ?

.code
start:

	mov ax,@data
	mov ds,ax
	
	mov dx,offset m1		;print msg 1
	mov ah,09h
	int 21h
	
	mov ah,01h				;enter the number
	int 21h
	
	mov dl,al				;changing value to real value
	sub dl,48
	mov n,dl
	
	mov dl,10
	mov ah,02h
	int 21h
	
	mov ah,00				;Dividing the number
	mov al,n
	div d
	mov r,ah
	
	cmp r,0					;Starting if condition
	je msg1
	jne msg2
	
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
	