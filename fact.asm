assume cs:code
code segment
start:
mov cx,05h
mov ax,01h
next:
mul cx
dec cx
cmp cx,01h
jnz next
mov ah,4ch
mov bl,al
mov al,0h
int 03h
code ends
end start

