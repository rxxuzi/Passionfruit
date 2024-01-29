      ******************************************************************
      * Author: rxxuzi
      * Date: 2024/01/17
      * Purpose: Demonstrates the usage of nested data structures in COBOL. 
      *          It shows how to assign values to individual fields within 
      *          a record and how to display these fields.
      * Tectonics: cobc
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. S008.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 EMPLOYEE-RECORD.
          02 EMPLOYEE-NAME.
             03 FIRST-NAME PIC X(15).
             03 LAST-NAME  PIC X(15).
          02 EMPLOYEE-ID PIC 9(5).
          02 EMPLOYEE-AGE PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           MOVE "John" TO FIRST-NAME
           MOVE "Doe" TO LAST-NAME
           MOVE 12345 TO EMPLOYEE-ID
           MOVE 30 TO EMPLOYEE-AGE
           DISPLAY "Employee Name: " EMPLOYEE-NAME
           DISPLAY "Employee ID:   " EMPLOYEE-ID
           DISPLAY "Employee Age:  " EMPLOYEE-AGE
           STOP RUN.

       END PROGRAM S008.
