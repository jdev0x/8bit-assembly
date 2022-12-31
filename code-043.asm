;#include <stdio.h>

;int main()
;{
;    int sum = 0;
;    int value = 1;
;    while(value <= 10){
;        sum = sum + value;
;        value++;
;    }
    
;    return 0;
;}

main:
    MOV A, 0 
    MOV B, 1 
    
loop:
    CMP A, 0x0A

    JA out_of_code
    ADD A, B 
    INC B
JMP loop
    
out_of_code:
    HLT

;machine code 
; 00: 06 00 00
; 03: 06 01 01
; 06: 17 00 0A
; 09: 29 12
; 0B: 0A 00 01
; 0E: 12 01
; 10: 1F 06
