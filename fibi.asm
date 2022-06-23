assume cs:code,ds:data
data segment
nl1 db 10,'enter number$'
nl2 db 10,'$'
temp db (?)
data ends
code segment
start:
mov ax,data
mov ds,ax
lea dx,nl1
mov ah,09h
int 21h
mov ah,01h
int 21h
sub al,30h
mov cl,al
mov al,0
mov bl,1
lbl1:
mov temp,al
lea dx,nl2
mov ah,09h
int 21h
add ax,3030h
mov dx,ax
mov ah,02h
int 21h
mov al,temp
add al,bl
mov bl,temp
loop lbl1
mov ah,4ch
int 21h
code ends
end start
