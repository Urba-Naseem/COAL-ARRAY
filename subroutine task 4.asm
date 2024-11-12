.model small
.stack 100h
.data
m1 db 'Enter 1st number: $'
m2 db 'Enter 2nd number: $'
m3 db 'Enter 3rd number: $'
m4 db '==================================$'
m5 db 'Product Answer: $'
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
    
    mov ah,1 ; 1 input
    int 21h
    mov bl,al 
    sub bl,48
   
    call space
    
    mov dl,m2
    mov dx,offset m2
    
    call print
    
    mov ah,1    ; 2 input
    int 21h
    mov cl,al
    sub cl,48
     
    call space
    
    mov al,bl
    mul cl 
    mov bl,al
    
    
    mov dl,m3
    mov dx,offset m3
    
    call print
    
    mov ah,1    ; 3 input
    int 21h
    mov cl,al
    sub cl,48
     
    call space 
    
    mov dl,m4
    mov dx,offset m4
    
    call print
    call space
    call space
    
    mov dl,m5
    mov dx,offset m5
    
    call print
    
    mov al,bl
    mul cl
    
    AAM 
       
    add ah,48
    add al,48
    
    mov bh,ah
    mov bl,al  
    
    mov dl,bh
    mov ah,02
    int 21h
    
    mov dl,bl
    mov ah,02
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