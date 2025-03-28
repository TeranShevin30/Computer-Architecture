.model small
.stack 100h

.data 
m db 2
n db 3

.code
start:

mov ax,@data
mov ds,ax

mov dl,m ;dl=2
add dl,n ;dl=2+3=5
add dl,48 ;dl=5+48=53

mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start
