.model small
.stack 100h
.data
arr db 49,50,51,52,53  ;ascii of 12345
.code
main Proc
    mov ax,@data
    mov ds,ax
    mov si,offset arr
    mov cx,5
    
    loop1:
    mov dl,[si]
    mov ah,2
    int 21h
    
    inc si ;mov dx,[si+1]
    loop loop1
mov ah,4ch
int 21h
main endp
end main
    
