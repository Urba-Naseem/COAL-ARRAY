.model small
.stack 100h
.data
arr DB 49,50,51,52,53
.code
main Proc
    mov ax,@data
    mov ds,ax
    mov si,offset arr 
     
    mov dl,[si + 4]
    mov ah,2
    int 21h 
    
    mov dl,[si + 3]
    mov ah,2
    int 21h
    
     mov dl,[si + 2]
    mov ah,2
    int 21h 
    
     
    mov dl,[si +1]
    mov ah,2
    int 21h
    
    
    mov dl,[si]
    mov ah,2
    int 21h
   
   
    
    
   
    
mov ah,4ch
int 21h
main endp
end main
    




