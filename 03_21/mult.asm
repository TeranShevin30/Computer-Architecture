.model small
.stack 100h

.data
m db 3
n db 2

.code
start:

mov ax,@data
mov ds,ax

mov al,m ;al=3
mul n ;al=3*2=6

mov dl,al
add dl,48 ;dl=6+48=52

mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start