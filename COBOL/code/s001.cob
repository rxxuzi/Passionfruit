      ******************************************************************
      * Author: rxxuzi
      * Date: 2024/01/15
      * Purpose: Demonstrate basic COBOL syntax for variable declaration,
      *          assignment, and output display.
      * Tectonics: cobc
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. S001.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM-INTEGER PIC 9(4).
       01 STR-TEXT PIC A(10).

       PROCEDURE DIVISION.
           MOVE 1234 TO NUM-INTEGER.
           MOVE "Hello" TO STR-TEXT.
           DISPLAY "Integer: " NUM-INTEGER.
           DISPLAY "String: " STR-TEXT.
           STOP RUN.

       END PROGRAM S001.
