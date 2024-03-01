      ******************************************************************
      * Author: rxxuzi
      * Date: 2024-01-19
      * Purpose: Append a message and the current datetime to message.txt
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. S014.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT MessageFile ASSIGN TO "message.txt"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  MessageFile.
       01  MessageRec.
           05  MessageText PIC X(100).

       WORKING-STORAGE SECTION.
       01  WS-CURRENT-DATE-TIME.
           05  WS-DATE.
               10  WS-YEAR     PIC 9(04).
               10  WS-MONTH    PIC 9(02).
               10  WS-DAY      PIC 9(02).
           05  WS-TIME.
               10  WS-HOUR     PIC 9(02).
               10  WS-MINUTE   PIC 9(02).
               10  WS-SECOND   PIC 9(02).
           05  WS-MICROSECOND PIC 9(06).

       01  WS-DATE-TEXT   PIC X(10).
       01  WS-TIME-TEXT   PIC X(08).
       01  WS-MESSAGE-STRING PIC X(100).

       PROCEDURE DIVISION.
       AppendMessage.
           *> Get current date
           ACCEPT WS-DATE FROM DATE YYYYMMDD.
           *> Get current time
           ACCEPT WS-TIME FROM TIME.

           *> Format date and time
           MOVE WS-YEAR TO WS-DATE-TEXT(1:4).
           MOVE WS-MONTH TO WS-DATE-TEXT(5:2).
           MOVE WS-DAY TO WS-DATE-TEXT(7:2).
           MOVE WS-HOUR TO WS-TIME-TEXT(1:2).
           MOVE WS-MINUTE TO WS-TIME-TEXT(3:2).
           MOVE WS-SECOND TO WS-TIME-TEXT(5:2).

           *> Prepare the message with date and time
           STRING "Hello World from s014. "
                  "Date: " WS-DATE-TEXT
                  " Time: " WS-TIME-TEXT
                  DELIMITED BY SIZE
                  INTO WS-MESSAGE-STRING.

           *> Append the message to the file
           OPEN EXTEND MessageFile
           MOVE WS-MESSAGE-STRING TO MessageText
           WRITE MessageRec
           CLOSE MessageFile
           DISPLAY "Message appended to message.txt".
           STOP RUN.
