      ******************************************************************
      * Author: rxxuzi
      * Date: 2024/01/16
      * Purpose: Basic arithmetic operations demonstration including addition,
      *          subtraction, multiplication, and division with two variables.
      * Tectonics: cobc
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. S002.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM-A PIC 9(4) VALUE 12.
       01 NUM-B PIC 9(4) VALUE 3.
       01 SUM-NUM PIC 9(4).
       01 DIFFERENCE PIC 9(4).
       01 PRODUCT PIC 9(4).
       01 QUOTIENT PIC 9(4).

       PROCEDURE DIVISION.

           DISPLAY "A : " NUM-A ", B : " NUM-B
           ADD NUM-A TO NUM-B GIVING SUM-NUM.
           DISPLAY "A + B: " SUM-NUM.

           SUBTRACT NUM-B FROM NUM-A GIVING DIFFERENCE.
           DISPLAY "A - B: " DIFFERENCE.

           MULTIPLY NUM-A BY NUM-B GIVING PRODUCT.
           DISPLAY "A * B: " PRODUCT.

           DIVIDE NUM-A BY NUM-B GIVING QUOTIENT.
           DISPLAY "A / B: " QUOTIENT.

           STOP RUN.

       END PROGRAM S002.
