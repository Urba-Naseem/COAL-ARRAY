.model small
.stack 100h
.data
m1 db 'Enter x: $'
m2 db 'Enter y: $'
m3 db 'Enter z: $'
m4 db 'Answer: $'
m5 db 'x+y-z-1:$'
.code

main proc
    
    call calculation
    
    mov ah,4ch
    int 21h
    main endp

calculation proc
    mov ax,@data
    mov ds,ax
    mov dl,m1
    mov dx,offset m1
    
    call print
    
    mov ah,1 ; x input
    int 21h
    mov cx,ax 
   
    call space
    
    mov dl,m2
    mov dx,offset m2
    
    call print
    
    mov ah,1    ; y input
    int 21h
    mov bx,ax
     
    call space
    
    add cx,bx
    sub cx,48
    mov dx,cx
    
    mov dl,m3
    mov dx,offset m3
    
    call print
    
    mov ah,1    ; z input
    int 21h
    mov bx,ax
     
    call space
    
    sub cx,bx
    add cx,48
    mov dx,cx 
    
    mov dl,m4
    mov dx,offset m4
    
    call print
    call space
    call space
    
    mov dl,m5
    mov dx,offset m5
    
    call print
    
    mov bx,1
    sub cx,bx 
    mov dx,cx
    
    mov ah,2
    int 21h
    ret
calculation endp  

space proc
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    ret
space endp

print proc
    
    mov ah,9
    int 21h
    ret
print endp


end main