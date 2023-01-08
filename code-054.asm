JMP start
message: db "won eeeee"
         db 0

count: db 0

start:
     MOV B, message 
     MOV D, 101 
     MOV C, 0
loop:
     CMP D, [B]
     je increase
     inc b 
     mov a, [b]
     cmp a, 0
     je out
jmp loop
increase:
     inc c
     inc b 
     mov a, [b]
     cmp a, 0
     je out
JMP loop

out:
     HLT
