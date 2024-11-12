.model small
.stack 100h
.data  
m1 db 'Addition: $'
m2 db 'Subtraction: $'  
m3 db 'Multiplication: $'
m4 db 'Division: $'

m5 db 'Enter 1st number: $'
m6 db 'Enter 2nd number: $'
m7 db '=================================$'
m8 db 'Answer: $' 
.code

main proc
    mov ax, @data         
    mov ds, ax  
   
    
    call addition
    call space
    
    call subtraction 
    call space
    
    call multiplication 
    call space
    
    call division
    call space
    
    mov ah, 4ch
    int 21h
main endp
           
input proc 
    
    mov dl,m5
    mov dx,offset m5
    mov ah, 9
    int 21h
    
    mov ah,01
    int 21h
    mov bl,al 
    sub bl,48
    
    call space

    mov dl,m6
    mov dx,offset m6
    mov ah, 9
    int 21h
    
    mov ah,01
    int 21h
    mov cl,al 
    sub cl,48 
    
    ret
input endp 

output proc
     
    mov dl,m7
    mov dx,offset m7
    mov ah, 9
    int 21h
    
    call space
    
    mov dl,m8
    mov dx,offset m8
    mov ah, 9
    int 21h  
    
    ret
output endp    

addition proc
    
    mov dl,m1
    mov dx,offset m1
    mov ah, 9
    int 21h   
    
    call space
    call input
    
    add bl, cl
    add bl, 48 
    
    call space          
    call output
              
    mov dl, bl
    mov ah, 2
    int 21h              

    ret
addition endp  

subtraction proc
    
    mov dl,m2
    mov dx,offset m2
    mov ah, 9
    int 21h
    
    call space
    call input
      
    sub bl, cl
    add bl, 48 
    
    call space 
    call output
               
    mov dl, bl
    mov ah, 2
    int 21h               

    ret
subtraction endp 

multiplication proc   
    
    mov dl,m3
    mov dx,offset m3
    mov ah, 9
    int 21h
    
    call space 
    call input
    
    call space 
    call output
    
    mov al,bl
    mul cl 
    
    AAM
    mov bh,ah
    mov bl,al
    
    mov dl,bh
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,bl
    add dl,48
    mov ah,2
    int 21h
    ret
multiplication endp   

division proc
    
    mov dl,m4
    mov dx,offset m4
    mov ah, 9
    int 21h 
    
    call space
    call input
    
    call space
    call output
    
    mov ax,0
    mov al,bl
    div cl  
    
    mov dx, ax
    add dx, 30h 
    mov ah, 2
    int 21h
    
    ret 
division endp

space proc
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    ret
    space endp   

end main