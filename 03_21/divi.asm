.model small
.stack 100h

.data
m db 8
n db 4
r db ?

.code
start:

mov ax,@data
mov ds,ax

mov ah,00
mov al,m
div n	;al=m/n=8/4=2
mov r,ah	;r=1

mov dl,al	;dl=2
add dl,48	;dl=48+2=50
mov ah,02h
int 21h

mov dl,10	;next line
mov ah,02h
int 21h

mov dl,r	;dl=0
add dl,48	;dl=0+48=48
mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start