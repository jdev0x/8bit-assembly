;thislist = [1, 2, 3, 4, 5]

;for x in thislist:
;    print(x)

; array in assembly

jmp code
thislist: db 0x01
          db 0x02
          db 0x03
          db 0x04
          db 0x05
var: db 48 

code:
    MOV A, 232
    MOV C, 0
    MOV B, thislist
    
loop:
    MOV D, [B]
    ADD D, [var]
    MOV [A], D
    INC A 
    INC B    
    INC C
    CMP C, 5
    JE out_of_code
    
JMP loop     

out_of_code:
    HLT
