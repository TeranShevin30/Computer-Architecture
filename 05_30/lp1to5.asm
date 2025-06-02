.model small
.stack 100h

.data
n db 5

.code 
start:
	mov ax,@data
	mov ds,ax
	
	mov cl,n
	lstart:
		mov dl,6
		sub dl,cl
		add dl,48
		mov ah,02h
		int 21h
		
		loop lstart
mov ax,4c00h
int 21h

end start
		