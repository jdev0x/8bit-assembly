;#include <stdio.h>
 
;int main () {

;   char grade = 'B';

;   switch(grade) {
;      case 'A' :
;         printf("A");
;         break;
;      case 'B' :
;      case 'C' :
;         printf("X");
;         break;
;      case 'D' :
;         printf("D");
;         break;
;      case 'F' :
;         printf("F");
;         break;
;      default :
;         printf("N");
;   }
    
;   return 0;
;}

MOV A, 66
MOV B, 232


;if grade == 'A'
CMP A, 65
JE print_a
;if grade == 'B' or grade == 'C'
CMP A, 66
JE print_b_c
CMP A, 67
JE print_d
;if grade == 'D'
CMP A, 68
JE print_f
;if grade == 'F'
CMP A, 70
JE print_f
MOV [B], 78

print_a:
MOV [B], 65
HLT

print_b_c:
MOV [B], 88
HLT

print_d:
MOV [B], 69
HLT

print_f:
MOV [B], 71
HLT
