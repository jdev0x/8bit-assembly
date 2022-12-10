mov a, 2 ; 06  00 02
mov b, 3 ; 06 01 03
mov c, 4 ; 06 02 04
mov d, 5 ; 06 03 05
not a

;opcode

;0: 06
;1: 00
;2: 02
;3: 06
;4: 01
;5: 03
;6: 06
;7: 02
;8: 04
;9: 06
;a: 03
;b: 05 
;c: 52
;d: 00
;asm-code -> [assembler] -> machine-code

;Memory as a table
;program as a table

;memory(instruction-size):
;0: 06 00 02  MOV A, 2
;3: 06 01 03  MOV B, 3
;6: 06 02 04  MOV C, 4
;9: 06 03 05  MOV D, 5
;c: 52 00     NOT A

;machine-code(BINARY):

;0000 0000: 0000 0110 0000 0000 0000 0010
;0000 0011: 0000 0110 0000 0001 0000 0011
;0000 0110: 0000 0110 0000 0010 0000 0100
;0000 1001: 0000 0110 0000 0011 0000 0101
;0000 1100: 0101 0010 0000 0000
