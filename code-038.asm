;<?php
;function addNumbers(int $a, int $b) {
;  return $a + $b;
;}
;echo addNumbers(5,7); 
;?>

; PHP to assembly language (8-bit simulator)

    MOV A, 5
    MOV B, 7
    CALL addNumbers
    MOV C, 232
    MOV [C], A
    HLT

addNumbers:
    ADD A, B
    RET

; PHP to machine code

00: 06 00 01
03: 06 01 07
06: 38 0F
08: 06 02 E8
0A: 05 02 00
0C: 00 
0D: 0A 00 01
10: 39
