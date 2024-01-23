      ******************************************************************
      * Author: rxxuzi
      * Date: 2024/01/16
      * Purpose: Demonstrates the use of loop constructs in COBOL, specifically
      *          using PERFORM VARYING for 'FOR' loop equivalent and PERFORM
      *          UNTIL for 'WHILE' loop equivalent.
      * Tectonics: cobc
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. S005.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 COUNTER PIC 9(4) VALUE 0.

       PROCEDURE DIVISION.
      * Iteration equivalent to the FOR statement (PERFORM VARYING)
           PERFORM VARYING COUNTER FROM 1 BY 1 UNTIL COUNTER > 5
               DISPLAY "Counter: " COUNTER
           END-PERFORM.

      * Iteration equivalent to WHILE statement (PERFORM UNTIL)
           MOVE 10 TO COUNTER.
           PERFORM UNTIL COUNTER < 5
               SUBTRACT 1 FROM COUNTER
               DISPLAY "Counter: " COUNTER
           END-PERFORM.

           STOP RUN.
       END PROGRAM S005.
