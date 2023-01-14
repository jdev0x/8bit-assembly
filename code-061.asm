;#include <stdio.h>

;int main(){
;    int sum = 0;
;    for(int i = 1; i <= 100; i++){
;        if((i % 2) == 0){
;            sum += i;
;        }
;    }
;    printf("%d\n", sum);
;    return 0;
;}

main:
    MOV A, 0 
    MOV B, 1
    MOV C, 1 ;bitmask

loop:
    CMP B, 100
    JA out_of_code
    MOV D, B
    AND D, C
    CMP D, 1
    JE continue
    ADD A, B
continue:
    INC B
        
JMP loop
;print(A)
out_of_code:
   HLT
