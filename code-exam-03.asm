; public static void main(String[] args) {

;        int testscore = 76;
;        char grade;
;
;        if (testscore >= 90) {
;            grade = 'A';
;        } else if (testscore >= 80) {
;           grade = 'B';
;       } else if (testscore >= 70) {
;            grade = 'C';
;        } else if (testscore >= 60) {
;            grade = 'D';
;        } else {
;            grade = 'F';
;        }
;        System.out.println( grade);
;    }

main:
    MOV A, 76
    MOV B, 0
    MOV C, 232
    
    CMP A, 90
    JAE gradea
    CMP A, 80
    JAE gradeb 
    CMP A, 70
    JAE gradec
    CMP A, 60
    JAE graded
    MOV [C], 70
    HLT

gradea:
MOV [C], 65 
HLT
gradeb:
MOV [C], 66 
HLT
gradec:
MOV [C], 67 
HLT
graded:
MOV [C], 68
HLT  

