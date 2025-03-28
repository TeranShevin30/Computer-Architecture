.model small
.stack 100h

.data
num1 db 2
num2 db 3
msg db "Addition"

.code
start:

mov ax,@data
mov ds,ax

mov dx,offset msg
mov ah,09h
int 21h

mov dl,num1
add dl,num2

mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start