.model small
.stack 100h 
.data 
l1 db 10,13,'Hey! My name is Urba Naseem.$'
l2 db 10,13,'I am a Pakistani national currently residing in Rawalpindi.$'
l3 db 10,13,'I am a Bs-Cs Undergraduate of Riphah International University.$'
l4 db 10,13,'My religion is Islam.$'  
.code
main Proc  
    
    call print
    
main endp

print Proc
    
    mov ax, @data
    mov ds,ax
    mov dl, l1
    mov dx, offset l1  
    mov ah, 09
    int 21h
    
    mov dl, l2
    mov dx, offset l2 
    mov ah, 09
    int 21h
    
    mov dl, l3
    mov dx, offset l3
    mov ah, 09
    int 21h
    
    mov dl, l4
    mov dx, offset l4
    mov ah, 09
    int 21h   
    ret
    
print endp

mov ah,4ch 
int 21h
end main
                                                                  