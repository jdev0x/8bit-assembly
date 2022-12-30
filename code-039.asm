; value = 64
; if value > 64:
;     print("A")
; elseif value < 64:
;     print("B")
; else: 
;     print("C")

main:

    MOV A, 64
    MOV B, 232

    CMP A, 64
    JA print_a  
    CMP A, 64
    JB print_b
    MOV [B], 67 ;print C character on screen

    HLT

print_a:
    MOV [B], 65 ;print A character on screen
    HLT

print_b:
    MOV [B], 66 ;print B character on screen


;if-else to machine code 

main -> 00: 06 00 40
03: 06 01 E8
06: 17 00 40
08: 29 14
0B: 17 00 40
0E: 21 18
10: 08 01 43
13: 00
14: 08 01 41 
17: 00
18: 08 01 42 
