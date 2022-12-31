;#include <stdio.h>

;int main()
;{
;    int sum = 0;
;    for(int i = 1; i <= 10; i++){
;        if(i == 5) continue;
;        sum++;
;    }
;    return 0;
;}

main:
    
    MOV A, 0 ;sum
    MOV B, 1 ;i 
    
loop:
    CMP B, 10
    JA out_of_code
    CMP B, 5
    JE continue 
    INC A 
continue:
    INC B
JMP loop

out_of_code:
    HLT

