;lods example
mov si, 1ah      
mov [si], 1234h  
lodsb ; fills al  
  
mov si, 1ah   
mov [si-2], 1234h  
sub si, 2
lodsw ; fills ax