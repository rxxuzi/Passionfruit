      ******************************************************************
      * Author: rxxuzi
      * Date: 2024-01-19
      * Purpose: Write a message to message.txt
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. S012.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT MessageFile ASSIGN TO "message.txt"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  MessageFile.
       01  MessageRec.
           05  MessageText PIC X(80).

       WORKING-STORAGE SECTION.
       01  WS-MessageText PIC X(80) VALUE "Hello World from s012".

       PROCEDURE DIVISION.
       WriteMessage.
           OPEN OUTPUT MessageFile
           MOVE WS-MessageText TO MessageText
           WRITE MessageRec
           CLOSE MessageFile
           DISPLAY "Message written to message.txt"
           STOP RUN.

       END PROGRAM S012.
