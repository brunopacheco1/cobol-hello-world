       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLOWORLD.
       AUTHOR.     BRUNO PACHECO.
      *************************************
      *            HELLO WORLD            *
      *************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.
       OBJECT-COMPUTER.

       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01  WS-NAME PIC X(10).

       PROCEDURE DIVISION.
       0001-HELLO-WORLD.

           DISPLAY "Enter your name".
           ACCEPT  WS-NAME.
           DISPLAY "Hello ", WS-NAME.
           
           STOP RUN.
           
           END PROGRAM HELLOWORLD.
