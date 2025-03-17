org 100h  
mov cx,0            
mov ax, 1234h
mov bx, 4321h
call sumAxBx   
mov ax, dx
hlt
;
sumAxBx proc  
        mov dx, 0
        add dx, ax
        add dx, bx
        ret
sumAxBx endp