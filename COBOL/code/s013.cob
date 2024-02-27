      ******************************************************************
      * Author: rxxuzi
      * Date: 2024-01-19
      * Purpose: Read a message from message.txt and display it
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. S013.

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

       PROCEDURE DIVISION.
       ReadMessage.
           OPEN INPUT MessageFile
           READ MessageFile INTO MessageRec
           AT END
               DISPLAY "End of file reached or file is empty."
           NOT AT END
               DISPLAY "Message read from file: " MessageText
           END-READ
           CLOSE MessageFile
           STOP RUN.

       END PROGRAM S013.
