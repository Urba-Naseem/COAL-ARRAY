.model small
.stack 100h
.data
arr db 67,92,34,15,27   
max db ?
min db ?    
max1 db 10,13, 'Maximum Number in Array: $'
min1 db 10,13, 'Minimum Number in Array: $'

.code
main Proc
    mov ax,@data
    mov ds,ax  
    
    mov si,offset arr  
    mov cx,5           
    mov bl,[si] 
    
    mov max,bl
    mov min,bl
    
    finding:
    
    mov bl,[si]  
    
    cmp bl,max
    jbe minimum
    mov max,bl
    
    minimum:
    cmp bl, min
    ja skip
    mov min,bl
    
    skip:
    inc si
    loop finding 
    
    mov dl,max1
    mov dx, offset max1
    
    mov ah,09
    int 21h
    
    mov al,max
    AAM
                   
    add ah,30h     
    add al,30h  
             
    mov bh,ah         
    mov bl,al
          
    mov dl,bh      
    mov ah,02
    int 21h
    
    mov dl,bl 
    mov ah,02    
    int 21h        
    
    mov dl,min1
    mov dx, offset min1
    
    mov ah,09
    int 21h
    
    mov al,min
    AAM
                   
    add ah,30h     
    add al,30h  
             
    mov bh,ah         
    mov bl,al
          
    mov dl,bh      
    mov ah,02
    int 21h
    
    mov dl,bl 
    mov ah,02    
    int 21h
  
    
mov ah,4ch
int 21h
main endp
end main