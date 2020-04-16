       IDENTIFICATION DIVISION.
       PROGRAM-ID. CIRCLECALCS.
       AUTHOR. BRUNO PACHECO.
      ************************************************
      * CALCULATE CIRCUMFERENCE AND AREA OF A CIRCLE *
      ************************************************

       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01  WS-CONSTANTS.
           05  WS-PI PIC 9(1)V9(5) VALUE 3.14159.

       01  WS-CIRCLE.
           05  WS-RADIUS        PIC 9(5)V9(5) VALUE ZEROES.
           05  WS-CIRCUMFERENCE PIC 9(5)V9(5) VALUE ZEROES.
           05  WS-AREA          PIC 9(5)V9(5) VALUE ZEROES.

       01  WS-DISPLAY-VALUES.
           05  WS-DISPLAY-AREA          PIC Z99.99.
           05  WS-DISPLAY-CIRCUMFERENCE PIC Z99.99.

       PROCEDURE DIVISION.

       0001-START.
           PERFORM 0002-READ-RADIUS.
           PERFORM 0003-CALCULATE-CIRCUMFERENCE.
           PERFORM 0004-CALCULATE-AREA.
           PERFORM 0005-PRINT-RESULTS.
           STOP RUN.

       0002-READ-RADIUS.
           DISPLAY "Insert the circle radius: ".
           ACCEPT WS-RADIUS.

       0003-CALCULATE-CIRCUMFERENCE.
           DISPLAY "Calculating circumference...".
           COMPUTE WS-CIRCUMFERENCE = 2 * WS-RADIUS * WS-PI.
           MOVE WS-CIRCUMFERENCE TO WS-DISPLAY-CIRCUMFERENCE.

       0004-CALCULATE-AREA.
           DISPLAY "Calculating area...".
           COMPUTE WS-AREA = WS-RADIUS ** 2 * WS-PI.
           MOVE WS-AREA TO WS-DISPLAY-AREA.

       0005-PRINT-RESULTS.
           DISPLAY "The circle circumference is: ",
               WS-DISPLAY-CIRCUMFERENCE.
           DISPLAY "The circle area is: ", WS-DISPLAY-AREA.

       END PROGRAM CIRCLECALCS.
