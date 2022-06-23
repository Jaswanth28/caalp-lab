assume cs:code,ds:data
data segment
data ends
code segment
begin:
mov ax,data
mov ds,ax
mov cx,10
mov dl,48
l1:
mov ah,02h
int 21h
inc dl
loop l1
mov ah,4ch
int 21h
code ends
end begin
