      ******************************************************************
      * Author: rxxuzi
      * Date: 2024/01/17
      * Purpose: Illustrates the use of a subroutine (DOUBLE) to double the 
      *          value of given numbers. Demonstrates the use of MOVE and 
      *          COMPUTE statements along with PERFORM to call subroutines.
      * Tectonics: cobc
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. S007.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A PIC 9(4) VALUE 10.
       01 B PIC 9(4) VALUE 100.
       01 TEMP-NUM PIC 9(4).
       01 RESULT PIC 9(4).

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           MOVE A TO TEMP-NUM
           PERFORM DOUBLE
           DISPLAY "Double of A is: " RESULT

           MOVE B TO TEMP-NUM
           PERFORM DOUBLE
           DISPLAY "Double of B is: " RESULT

           STOP RUN.

       DOUBLE.
           COMPUTE RESULT = TEMP-NUM * 2.
