   MOV A, 232
   MOV B, 10
   MOV C, 48

loop:
   MOV [A], C
   INC A
   DEC B
   INC C
   CMP B, 0
   JE end_of_code
   JMP loop

end_of_code:
   HLT
