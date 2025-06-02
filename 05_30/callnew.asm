;Functions writing

.model small
.stack 100h

.data
msg db "Enter a number: $"
a db ?

.code
start:
	mov ax,@data
	mov ds,ax
	
		mov dx,offset msg
		mov ah,09h
		int 21h
		
		call read
		call newLine
		call print
	
	mov ax,4c00h
	int 21h
	
	proc read
		mov ah,01h
		int 21h
		
		mov dl,al
		sub dl,48
		mov a,dl
	ret
	endp
	
	proc newLine
		mov dl,10
		mov ah,02h
		int 21h
	ret
	endp
	
	proc print
		mov dl,a
		add dl,48
		mov ah,02h
		int 21h
	ret
	endp
end start
		