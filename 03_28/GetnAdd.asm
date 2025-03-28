.model small
.stack 100h

.data 
msg1 db "Enter the number 01 : $"
msg2 db "Enter the number 02 : $"
msg3 db "Total of number 01 and number 02: $"
n1 db 0	;3
n2 db 0	;4
n3 db 0	;7

.code
start:
	mov ax,@data
	mov ds,ax
;Number 01	
	mov dx,offset msg1
	mov ah,09h
	int 21h
	
	mov ah,01h
	int 21h
	
	mov dl,al
	sub dl,48	;dl=51-48
	mov n1,dl	;3
	
	mov dl,0ah	;next line
	mov ah,02h
	int 21h
	
;Number 02
	mov dx,offset msg2
	mov ah,09h
	int 21h
	
	mov ah,01h
	int 21h
	
	mov dl,al
	sub dl,48	;dl=52-48
	mov n2,dl	;4
	
	mov dl,0ah	;next line
	mov ah,02h
	int 21h
;Number 03
	mov dx,offset msg3
	mov ah,09h
	int 21h
	
	mov dl,n1	;dl=3
	add dl,n2	;dl=3+4
	add dl,48	;dl=7+48
	mov n3,dl	;n3=55
	
	mov ah,02h
	int 21h
	
	mov ax,4c00h
	int 21h
	
end start