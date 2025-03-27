
.model small
.stack 100h

.data
a db 2
b db 2
c db ?

.code
start:

mov ax,@data
mov ds,ax

mov ah,00
mov al,a
div b
mov c,ah

mov dl,al
add dl,48

mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start
