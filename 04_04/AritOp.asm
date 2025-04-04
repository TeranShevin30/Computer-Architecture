.model small
.stack 100h

.data
msg1 db "Enter the first number : $"
msg2 db "Enter the second number : $"
m1 db "The addition is : $"
m2 db "The subtraction is : $"
m3 db "The multiplication is : $"
m4 db "The division quotient is : $"
m5 db "The devision remainder is : $"
num1 db 0
num2 db 0
rem db ?

.code
start:

mov ax,@data
mov ds,ax
;Entering
	;num 1
		mov dx,offset msg1
		mov ah,09h
		int 21h
		
		mov ah,01h
		int 21h
		
		mov dl,al
		sub dl,48
		mov num1,dl
		
		mov dl,0ah
		mov ah,02h
		int 21h		;next line
	
	;num 2
		mov dx,offset msg2
		mov ah,09h
		int 21h
		
		mov ah,01h
		int 21h
		
		mov dl,al
		sub dl,48
		mov num2,dl
		
		mov dl,0ah
		mov ah,02h
		int 21h		;next line
;Arithmatics
	;Addition
		mov dx,offset m1
		mov ah,09h
		int 21h
		
		mov dl,num1
		add dl,num2
		add dl,48
		
		mov ah,02h
		int 21h
		;next line
		mov dl,0ah
		mov ah,02h
		int 21h		
	;Subtraction
		mov dx,offset m2
		mov ah,09h
		int 21h
		
		mov dl,num1
		sub dl,num2
		add dl,48
		
		mov ah,02h
		int 21h
		;next line
		mov dl,0ah
		mov ah,02h
		int 21h
	;Multiplication
		mov dx,offset m3
		mov ah,09h
		int 21h
		
		mov al,num1
		mul num2
		mov dl,al
		add dl,48
		
		mov ah,02h
		int 21h
		;next line
		mov dl,0ah
		mov ah,02h
		int 21h
	;Division
		mov dx,offset m4
		mov ah,09h
		int 21h
		
		mov ah,00
		mov al,num1
		div num2
		mov rem,ah
					;whole num printing
		mov dl,al		
		add dl,48
		mov ah,02h
		int 21h		
					;nextline
		mov dl,0ah
		mov ah,02h
		int 21h
		
		mov dx,offset m5
		mov ah,09h
		int 21
					;remainder printing
		mov dl,rem		
		add dl,48
		mov ah,02h
		int 21h
	
mov ax,4c00h
int 21h

end start