      ******************************************************************
      * Author: rxxuzi
      * Date: 2024/01/16
      * Purpose: Demonstrates basic user input and output handling in COBOL. 
      *          It prompts the user to enter a numerical value, accepts 
      *          the input from the console, and then displays the entered value.
      * Tectonics: cobc
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. S010.
       ENVIRONMENT DIVISION.
       configuration section.

       data division.
       working-storage section.

       01 INPUT-RECORD.
       03 IN-DATA PIC 9(5).

       procedure division.
       MAIN-LOGIC.
           DISPLAY "Please enter a numerical value"
      *>      WITH NO ADVANCING.
           accept IN-DATA from CONSOLE.

           DISPLAY ">>>" IN-DATA

           stop run.

       END PROGRAM S010.
