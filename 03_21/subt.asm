.model small
.stack 100h

.data
m db 3
n db 2

.code
start:

mov ax,@data
mov ds,ax

mov dl,m ;dl=3
sub dl,n ;dl=3-2=1
add dl,48 ;dl=1+48=49

mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start