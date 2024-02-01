      ******************************************************************
      * Author: rxxuzi
      * Date: 2024/01/17
      * Purpose: Implements a program to identify prime numbers between 2 
      *          and 100. It uses nested loops and checks for non-divisibility
      *          to determine the primality of each number.
      * Tectonics: cobc
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. S009.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM           PIC 9(3) VALUE 2.
       01 DIVISOR       PIC 9(3).
       01 REM           PIC 9(3).
       01 PRIME-FLAG    PIC 9 VALUE 1.
       01 QUOTIENT      PIC 9(3).

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           PERFORM VARYING NUM FROM 2 BY 1 UNTIL NUM > 100
               MOVE 1 TO PRIME-FLAG
               PERFORM VARYING DIVISOR FROM 2 BY 1 UNTIL DIVISOR >= NUM
                   DIVIDE NUM BY DIVISOR GIVING QUOTIENT REMAINDER REM
                   IF REM = 0 AND NUM NOT = DIVISOR
                       MOVE 0 TO PRIME-FLAG
                       EXIT PERFORM
                   END-IF
               END-PERFORM
               IF PRIME-FLAG = 1
                   DISPLAY NUM " is a prime number."
               END-IF
           END-PERFORM
           STOP RUN.

       END PROGRAM S009.
