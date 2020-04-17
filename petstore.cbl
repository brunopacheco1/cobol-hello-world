       IDENTIFICATION DIVISION.
       PROGRAM-ID. PETSTORE.
       AUTHOR. BRUNO PACHECO.
      ************************************************
      * PETSTORE CASH REGISTER                       *
      * TODO: PRINT ALL ITEMS                        *
      *       PRINT TOTAL COST AS MONEY              *
      ************************************************

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  ITEM OCCURS 100 TIMES INDEXED BY I.
           05  ITEM-DESCRIPTION PIC X(10).
           05  ITEM-PRICE       PIC 999V99.
           05  ITEM-QUANTITY    PIC 999.
           05  ITEM-COST        PIC 999V99.

       01  CASH-REGISTER.
           05  TOTAL-QUANTITY          PIC 999 VALUE ZEROES.
           05  TOTAL-COST              PIC 99999V99 VALUE ZEROES.
           05  TOTAL-COST-DISCOUNTED   PIC 99999V99 VALUE ZEROES.

       01  WS-CONTROL.
           05  DISCOUNT                PIC V9  VALUE .8.
           05  MINIMUM-FOR-DISCOUNT    PIC 999 VALUE 100.
           05  USER-ANSWER             PIC A.
               88  DONE                VALUE 'N'.

       01  WS-DISPLAY.
           05  DISPLAY-TOTAL-QUANTITY   PIC ZZ999.
           05  DISPLAY-TOTAL-COST       PIC ZZ99V99.

       PROCEDURE DIVISION.

       0001-START.
           PERFORM 0002-WELCOME-USER.
           PERFORM 0003-ASK-FOR-ITEM UNTIL DONE.
           PERFORM 0004-CALCULATE-DISCOUNT.
           PERFORM 0005-DISPLAY-BILL.
           STOP RUN.
       0001-END.

       0002-WELCOME-USER.
           DISPLAY "Hi, welcome to the petstore cash register system!".
       0002-END.

       0003-ASK-FOR-ITEM.
           DISPLAY "Item description:"
           ACCEPT ITEM-DESCRIPTION (I)
           DISPLAY "Item price:"
           ACCEPT ITEM-PRICE (I)
           DISPLAY "Item quantity:"
           ACCEPT ITEM-QUANTITY (I)
           COMPUTE ITEM-COST (I) = ITEM-QUANTITY (I) * ITEM-PRICE (I)
           ADD ITEM-QUANTITY (I) TO TOTAL-QUANTITY
           ADD ITEM-COST (I) TO TOTAL-COST
           ADD 1 TO I
           DISPLAY "Do you have items to include? Y/N".
           ACCEPT USER-ANSWER.
       0003-END.

       0004-CALCULATE-DISCOUNT.
           IF TOTAL-COST IS GREATER THAN MINIMUM-FOR-DISCOUNT THEN
               COMPUTE TOTAL-COST-DISCOUNTED = TOTAL-COST * DISCOUNT
           ELSE
               MOVE TOTAL-COST TO TOTAL-COST-DISCOUNTED
           END-IF.
       0004-END.

       0005-DISPLAY-BILL.
           MOVE TOTAL-COST TO DISPLAY-TOTAL-COST.
           MOVE TOTAL-QUANTITY TO DISPLAY-TOTAL-QUANTITY.
           DISPLAY "Total cost: ", TOTAL-COST.
           DISPLAY "Total cost with discount: ", TOTAL-COST-DISCOUNTED.
           DISPLAY "Total quantity: ", TOTAL-QUANTITY.
       0005-END.

       END PROGRAM PETSTORE.
