      ******************************************************************
      * Author: rxxuzi
      * Date: 2024/01/16
      * Purpose: Illustrates various arithmetic operations in COBOL, 
      *          including computation, modulus, multiplication, subtraction, 
      *          and rounding, along with increment and decrement operations.
      * Tectonics: cobc
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. S003.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM-A PIC 9(4) VALUE 12.
       01 NUM-B PIC 9(4) VALUE 3.
       01 SUM-RESULT PIC 9(5).
       01 QUOTIENT PIC 9(4).
       01 REM PIC 9(4).
       01 PRODUCT PIC 9(5).
       01 RESULT PIC 9(5).
       01 ROUNDED-RESULT PIC 9(5).

       PROCEDURE DIVISION.

           DISPLAY "A is:" NUM-A ", B is:" NUM-B
      * Cumulative addition (COMPUTE)
           COMPUTE SUM-RESULT = NUM-A + NUM-B + 10.
           DISPLAY "Computed Sum: " SUM-RESULT.

      * Surplus (MOD)
           DIVIDE NUM-A BY NUM-B GIVING QUOTIENT REMAINDER REM.
           DISPLAY "Quotient: " QUOTIENT " Remainder: " REM.

      * Accumulation of Multiplications (MULTIPLY)
           MULTIPLY NUM-A BY 2 GIVING PRODUCT.
           DISPLAY "Doubled NUM-A: " PRODUCT.

      * Accumulation of subtraction (SUBTRACT)
           SUBTRACT NUM-A, 5 FROM NUM-B GIVING RESULT.
           DISPLAY "Subtracted Result: " RESULT.

      * Rounding of values (ROUNDING)
           COMPUTE ROUNDED-RESULT ROUNDED = NUM-A / 3.
           DISPLAY "Rounded Division Result: " ROUNDED-RESULT.

      * Increment and decrement
           ADD 1 TO NUM-A.
           DISPLAY "Incremented NUM-A: " NUM-A.
           SUBTRACT 1 FROM NUM-B.
           DISPLAY "Decremented NUM-B: " NUM-B.

           STOP RUN.

       END PROGRAM S003.
