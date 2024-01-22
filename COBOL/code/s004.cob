      ******************************************************************
      * Author: rxxuzi
      * Date: 2024/01/16
      * Purpose: Demonstrates the use of IF statements, simple loops using
      *          PERFORM UNTIL, and CASE statements using EVALUATE in COBOL.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. S004.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM-A PIC 9(4) VALUE 5.
       01 NUM-B PIC 9(4) VALUE 10.
       01 I PIC 9(4) VALUE 0.

       PROCEDURE DIVISION.

      * IF statement
           IF NUM-A > NUM-B then
               DISPLAY "A > B"
           ELSE
               DISPLAY "A < B"
           END-IF.

      * Simple loop (PERFORM UNTIL)
           PERFORM UNTIL I = 5
               ADD 1 TO I
               DISPLAY "Count is now " I
           END-PERFORM.

      * CASE statement (EVALUATE)
           EVALUATE TRUE
               WHEN NUM-A = 5
                   DISPLAY "NUM-A is 5"
               WHEN NUM-A > 5
                   DISPLAY "NUM-A is greater than 5"
               WHEN OTHER
                   DISPLAY "NUM-A is less than 5"
           END-EVALUATE.

           STOP RUN.

       END PROGRAM S004.
