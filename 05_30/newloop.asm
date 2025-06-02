.model small
.stack 100h

.data
s db " $"
n db 5

.code 
start:
	mov ax,@data
	mov ds,ax
	
	mov cl,5		;ending number(5)
	mov bl,1		;starting number(1)

	print_loop:
		mov ah,02h
		mov dl,bl
		add dl,48
		int 21h		;1st -> bl=1	2nd -> bl=2
		
		mov dx,offset s
		mov ah,09h
		int 21h
		
		inc bl		;dec -> decrement	inc -> increment
		loop print_loop
	
mov ax,4c00h
int 21h

end start
		


	