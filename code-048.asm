jmp code
; data
this: db 0x01

that: db 0x0A
      db 0x0B
      db 0x0C
      db 0x0D
      db 0x0E
      db 0x0F

code:
   MOV A, that
   ADD A, 4
   MOV [A], 0xDD
   
   HLT



