;i = 1
;while i < 6:
;  print(i)
;  i += 1

; convert Python code to assembly language?

    MOV A, 1
    MOV B, 232
    MOV C, 48 
loop:
    CMP A, 6
    JAE out_of_code
    ADD C, 1
    MOV [B], C 
    INC A
    INC B
    
JMP loop

out_of_code:
    HLT
