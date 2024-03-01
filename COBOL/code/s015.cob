      ******************************************************************
      * Author: rxxuzi
      * Date: 2024-01-19
      * Purpose: Capture ID, Country from input and append to database.txt
      * with current date and time.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. S015.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT DatabaseFile ASSIGN TO "./../database.txt"
           ORGANIZATION IS LINE SEQUENTIAL
           FILE STATUS IS WS-FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.
       FD  DatabaseFile.
       01  DatabaseRec                  PIC X(100).

       WORKING-STORAGE SECTION.
       01  WS-ID                        PIC X(20).
       01  WS-COUNTRY                   PIC X(20).
       01  WS-FILE-STATUS               PIC XX.
       01  WS-CURRENT-DATE-TIME.
           05  WS-DATE.
               10  WS-YEAR             PIC 9(04).
               10  WS-MONTH            PIC 9(02).
               10  WS-DAY              PIC 9(02).
           05  WS-TIME.
               10  WS-HOUR             PIC 9(02).
               10  WS-MINUTE           PIC 9(02).
               10  WS-SECOND           PIC 9(02).
       01  WS-FORMATTED-STRING         PIC X(100) VALUE SPACES.

       PROCEDURE DIVISION.
       Main-Logic.
           DISPLAY "Enter ID: "
           ACCEPT WS-ID
           DISPLAY "Enter Country: "
           ACCEPT WS-COUNTRY

           *> Get current date and time
           ACCEPT WS-DATE FROM DATE YYYYMMDD.
           ACCEPT WS-TIME FROM TIME.

           *> Format the string to write into the file
           STRING "ID : " WS-ID DELIMITED BY SIZE
                  ",Country : " WS-COUNTRY DELIMITED BY SIZE
                  ",Date : " WS-YEAR DELIMITED BY SIZE "/"
                              WS-MONTH DELIMITED BY SIZE "/"
                              WS-DAY DELIMITED BY SIZE
                  ",Time : " WS-HOUR DELIMITED BY SIZE ":"
                              WS-MINUTE DELIMITED BY SIZE ":"
                              WS-SECOND DELIMITED BY SIZE
                  INTO WS-FORMATTED-STRING.

           *> Open the file, create if not exists
           OPEN EXTEND DatabaseFile
           IF WS-FILE-STATUS NOT = "00"
              OPEN OUTPUT DatabaseFile
           END-IF

           *> Append the information to the file
           MOVE WS-FORMATTED-STRING TO DatabaseRec
           WRITE DatabaseRec
           CLOSE DatabaseFile

           DISPLAY "Information saved to database.txt".
           STOP RUN.
