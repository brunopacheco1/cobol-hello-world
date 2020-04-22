       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLOWORLD.
       AUTHOR.     BRUNO PACHECO.
      *************************************
      *            HELLO WORLD            *
      *************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NAME PIC X(10).

       PROCEDURE DIVISION.
       0001-HELLO-WORLD.
           DISPLAY "Enter your name".
           ACCEPT  WS-NAME.
           DISPLAY "Hello ", WS-NAME.
           STOP RUN.
       0001-END.
           
       END PROGRAM HELLOWORLD.
