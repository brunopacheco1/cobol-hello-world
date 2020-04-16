       IDENTIFICATION DIVISION.
       PROGRAM-ID. CIRCLECALCS.
       AUTHOR. BRUNO PACHECO.
      ************************************************
      * CALCULATE CIRCUMFERENCE AND AREA OF A CIRCLE *
      ************************************************

       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01  WS-PI            PIC 9(1)V9(5) VALUE 3.14159.
       01  WS-RADIUS        PIC 9(5)V9(5).
       01  WS-CIRCUMFERENCE PIC 9(5)V9(5).
       01  WS-AREA          PIC 9(5)V9(5).

       PROCEDURE DIVISION.

       0001-START.
           PERFORM 0002-READ-RADIUS.
           PERFORM 0003-CALCULATE-CIRCUMFERENCE.
           PERFORM 0004-CALCULATE-AREA.
           PERFORM 0005-PRINT-RESULTS.
           STOP RUN.

       0002-READ-RADIUS.
           DISPLAY "Insert the circle's radius: ".
           ACCEPT WS-RADIUS.

       0003-CALCULATE-CIRCUMFERENCE.
           DISPLAY "Calculating circumference...".
           COMPUTE WS-CIRCUMFERENCE = 2 * WS-RADIUS * WS-PI.

       0004-CALCULATE-AREA.
           DISPLAY "Calculating area...".
           COMPUTE WS-AREA = WS-RADIUS ** 2 * WS-PI.

       0005-PRINT-RESULTS.
           DISPLAY "The circle's circumference is: ", WS-CIRCUMFERENCE.
           DISPLAY "The circle's area is: ", WS-AREA.

       END PROGRAM CIRCLECALCS.
