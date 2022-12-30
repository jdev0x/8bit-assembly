; value = 10
; if(value == 10){
;     print("A");
;  }

; to assembly language 8-bit simulator:

    MOV A, 10
    CMP A, 10
    JE print_a 
    HLT


print_a:
    MOV B, 232
    MOV [B], 65
