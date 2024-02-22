      ******************************************************************
      * Author: rxxuzi
      * Date: 2024-01-19
      * Purpose: Create an empty file and display its path
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. S011.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EmptyFile ASSIGN TO "empty.txt"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  EmptyFile.
       01  EmptyRec.
           05  Filler PIC X.

       PROCEDURE DIVISION.
       CreateFile.
           OPEN OUTPUT EmptyFile
           CLOSE EmptyFile
           DISPLAY "File created: empty.txt"
           STOP RUN.

       END PROGRAM S011.
