;values = [1, 2, 3]
;for x in values:
;  print(x) 
;  if x == 2:
;    break

main:
    MOV A, 1
    MOV B, 1
    MOV C, 232
    MOV D, 49

loop:
    CMP B, 3
    JA out_of_loop
    MOV [C], D
    CMP B, 2
    JE out_of_loop
    INC A
    INC B
    INC C 
    INC D
    
JMP loop


out_of_loop:
    HLT
