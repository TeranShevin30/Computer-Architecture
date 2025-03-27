

.model small
.stack 100h

.data
a db 5
b db 2

.code
start:

mov ax,@data
mov ds,ax


mov dl,a ;dl=2
sub dl,b ;dl=2+7
add dl,48


mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start
