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
