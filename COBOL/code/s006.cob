      ******************************************************************
      * Author: rxxuzi
      * Date: 2024/01/16
      * Purpose: Demonstrates array handling in COBOL. It includes setting
      *          values to array elements and displaying them using a loop.
      * Tectonics: cobc
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. S006.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMBER_LIST.
          05 ITEM PIC 9(4) OCCURS 10 TIMES.
       01 I PIC 9(4).

       PROCEDURE DIVISION.
      * Set a value for each element of the array
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
               MOVE I TO ITEM(I)
           END-PERFORM.

      * Display array elements
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
               DISPLAY "Item " I " is " ITEM(I)
           END-PERFORM.

           STOP RUN.
