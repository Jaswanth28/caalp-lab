assume cs:code
code segment
start:
mov cx,05h
mov bx,03h
mov dx,07h
mov si,bx
mov di,dx
mov al,cl
store:
mov byte ptr[si],al
dec al
cmp al,0h
jne store
again:
mov al,byte ptr[si]
mov byte ptr[di],al
loop again
mov ah,4ch
int 21h
code ends
end start
