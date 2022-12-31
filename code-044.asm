;#include <stdio.h>

;int main()
;{
;    int sum = 0;
;    for(int i = 1; i <= 10; i++){
;        for(int x = 1; x <= 5; x++){
;            sum = i + x;
;        }
;    }
;    return 0;
;}

main:

    MOV A, 0 ;sum 
    MOV B, 1 ;i
    MOV C, 1 ;x
    
loop:
    CMP B, 10
    JA out_of_code
    
loop2:
    CMP C, 5
    JA out_of_code
    ADD A, B 
    ADD A, C
    INC C
JMP loop2
    INC B
JMP loop

out_of_code:
    HLT

;machine code
; 00: 06 00 00
; 03: 06 01 01
; 06: 06 02 01
; 09: 17 01 0A
; 0C: 29 21
; 0E: 17 02 05
; 11: 29 21
; 13: 0A 00 01
; 16: 0A 00 02
; 19: 12 02
; 21: 1F 0E
; 23: 12 01
; 25: 1F 09 
; 27: 00

