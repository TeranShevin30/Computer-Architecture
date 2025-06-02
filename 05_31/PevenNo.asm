;print even numbers from 2 to 9

.model small
.stack 100h

.data
msg db "even numbers from 2 to 9: $"
r db 0

.code
start:
	mov ax,@data
	mov ds,ax
	
		mov cl,9
		mov al,2
		
		lstart:
		
			call evenNum
			inc al
			
			loop lstart
		
	mov ax,4c00h
	int 21h
		
		proc evenNum
			mov bl,2
			div bl
			mov r,ah
			cmp r,0
			je evenNumber
			jne oddNumber
			
			evenNumber:
				mov dl,al
				add dl,48
				mov ah,02h
				int 21h
				
				mov dl,10
				mov ah,02h
				int 21h
				
				jmp endn
			oddNumber:
			
			endn:
		ret
		endp
	
end start