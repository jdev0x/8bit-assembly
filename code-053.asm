JMP start
message: db "welcome to assembly"
         db 0
start:
     MOV A, 232  
     MOV B, message 
  
loop:
     MOV C, [B]
     CMP C, 0
     JE out
     MOV D, C
     SUB D, 32
     MOV [A], D
     INC A
     INC B
     
JMP loop

out:
     HLT
