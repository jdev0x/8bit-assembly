JMP code
    message: db "assembly stack string" 
             db 0
code:
    MOV A, message
    MOV B, 232
    PUSH 0
push_to_stack:
    MOV D, [A]
    CMP D, 0
    JE pop_of_stack
    PUSH D
    INC A
 
JMP push_to_stack


pop_of_stack:
    POP D
    MOV [B], D
    INC B
    CMP D, 0
    JE out
JMP pop_of_stack
 
out:
   HLT

