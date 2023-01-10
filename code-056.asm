JMP code
; data
    string: db "welcome to assembly"
            db 0

code:
    MOV A, string
    ADD A, 18
    MOV B, 232
 
loop:
    MOV D, [A]
    CMP D, 0
    JE out
    MOV [B], D
    INC B
    DEC A
    
JMP loop
    

out:
    HLT
