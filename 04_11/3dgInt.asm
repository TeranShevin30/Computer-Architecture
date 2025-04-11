.model small
.stack 100h

.data
m1 db "First integer: $"
m2 db "Second integer: $"
m3 db "Third integer: $"
n1 db 0
n2 db 0
n3 db 0

.code 
start:
    mov ax,@data
    mov ds,ax

    mov dx,offset m1    ;printing msg 1
    mov ah,09h
    int 21h

    mov ah,01h
    int 21h

    mov dl,al   ;49
    sub dl,48   ;49-48
    mov n1,dl   ;dl=1   n1=1

    mov bl,10
    mov al,n1   
    mul bl      ;n1*10
    mov n1,al   ;n1=10

    mov dl,0ah
    mov ah,02h
    int 21h     ;nextline

    mov dx,offset m2    ;printing msg 2
    mov ah,09h
    int 21h

    mov ah,01h
    int 21h

    mov dl,al   ;50
    sub dl,48   ;50-48=2
    mov n2,dl   ;n2=2
    mov dl,n1   ;dl=10
    add dl,n2   ;dl=10+2=12

    mov al,dl   ;al=12
    mul bl      ;12*10=120  
    mov n2,al   ;n2=120

    mov dl,0ah
    mov ah,02h
    int 21h     ;nextline

    mov dx,offset m3    ;printing msg 3
    mov ah,09h
    int 21h

    mov ah,01h
    int 21h

    mov dl,al   ;al=51
    sub dl,48   ;dl=51-48=3
    mov n3,dl   ;n3=3
    mov dl,n2   ;dl=120
    add dl,n3   ;dl=123
    add dl,48

    mov dl,0ah
    mov ah,02h
    int 21h     ;nextline    

    mov ah,02h  ;print digit
    int 21h

    mov ax,4c00h
    int 21h

end start






