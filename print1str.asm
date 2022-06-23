assume cs:code,ds:data
data segment
nl1 db 0ah,'hello world$'
data ends
code segment
start:
mov ax,data
mov ds,ax
lea dx,nl1
mov ah,09h
int 21h
mov ah,4ch
int 21h
code ends
end start
