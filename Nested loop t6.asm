.model small
.stack 100h
.data
.code
main Proc
         
         mov cx,3
         loop1:
         push cx
         
         mov cx,5
         loop2:
         
         mov dl,'*'
         mov ah,02
         int 21h
         loop loop2
         
         call space
         
         pop cx
         
         loop loop1
         
mov ah,4ch
int 21h
main endp


space Proc
    
    mov dl,10
    mov ah,02
    int 21h
    
    mov dl,13
    mov ah,02
    int 21h
    
    ret
space endp  
end main