assume cs:code,ds:data
data segment
arr db 5,3,7,1,9,2,6,8,4
len dw $-arr
min db ?
max db ?
data ends
code segment
start:
mov ax,data
mov ds,ax
lea si,arr
mov al,arr[si]
mov min,al
mov max,al
mov cx,len
repeat:
mov al,arr[si]
cmp min,al
jl checkmax
mov min ,al
checkmax:
cmp max,al
jg done
mov max,al
done:
inc si
loop repeat
mov bl,min
mov cl,max
mov ah,4ch
int 03h
code ends
end start
