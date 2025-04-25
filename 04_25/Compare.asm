.model small
.stack 100h

.data
m1 db "Enter First single digit: $"
m2 db "Enter Second single digit: $"
m3 db "First number is greater!$"
m4 db "Second digit is greater!$"
n db 0
m db 0

.code
start:
	mov ax,@data
	mov ds,ax
	
	mov dx,offset m1
	mov ah,09h
	int 21h
	
	mov ah,01h
	int 21h
	
	mov dl,al				;changing ascii value to real value
	sub dl,48
	mov n,dl
	
	mov dl,10				;next line
	mov ah,02h
	int 21h
	
	mov dx,offset m2
	mov ah,09h
	int 21h
	
	mov ah,01h
	int 21h
	
	mov dl,al				;changing ascii value to real value
	sub dl,48
	mov m,dl
	
	mov dl,10				;next line
	mov ah,02h
	int 21h
	
	mov bl,n
	cmp bl,m
	jg msg1
	jl msg2
	
	msg1:
	mov dx,offset m3
	mov ah,09h
	int 21h
	jmp endn
	
	msg2:
	mov dx,offset m4
	mov ah,09h
	int 21h
	
	endn:
	mov ax,4c00h
	int 21h
	
end start