;#include <stdio.h>

;int main(){
;    int sum = 0;
;    for(int i = 25; i >= 1; i--){
;        sum += i;
;    }
;    printf("%d\n", sum);
;    return 0;
;}

main:
    MOV A, 0
    MOV B, 25
    MOV C, 232
loop:
    CMP B, 0
    JE out_of_code
    ADD A, B
    DEC B
     
JMP loop
; print(A)
out_of_code:
     HLT
