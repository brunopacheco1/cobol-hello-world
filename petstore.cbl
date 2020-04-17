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
       01  WS-ITEM OCCURS 100 TIMES INDEXED BY I.
           05  WS-ITEM-QUANTITY    PIC 999.
           05  WS-ITEM-PRICE       PIC 999V99.
           05  WS-ITEM-DESCRIPTION PIC X(10).
           05  WS-ITEM-COST        PIC 999V99.

       01  WS-CASH-REGISTER.
           05  WS-DISCOUNT             PIC 9V9 VALUE 0.8.
           05  WS-MINIMUM-FOR-DISCOUNT PIC 999 VALUE 100.
           05  WS-HAS-MORE-ITEMS       PIC A VALUE 'Y'.
           05  WS-TOTAL-QUANTITY       PIC 999 VALUE ZEROES.
           05  WS-TOTAL-COST           PIC 99999V99 VALUE ZEROES.

       01  WS-DISPLAY.
           05  WS-DISPLAY-TOTAL-QUANTITY   PIC ZZ999.
           05  WS-DISPLAY-TOTAL-COST       PIC ZZ99V99.

       PROCEDURE DIVISION.

       0001-START.
           PERFORM 0002-WELCOME-USER.
           PERFORM 0003-ASK-FOR-ITEM UNTIL WS-HAS-MORE-ITEMS = 'N'.
           PERFORM 0004-CALCULATE-DISCOUNT.
           PERFORM 0005-DISPLAY-BILL.
           STOP RUN.

       0002-WELCOME-USER.
           DISPLAY "Hi, welcome to the petstore cash register system!".

       0003-ASK-FOR-ITEM.
           DISPLAY "Do you have items to include? Y/N".
           ACCEPT WS-HAS-MORE-ITEMS.
           IF WS-HAS-MORE-ITEMS IS EQUAL TO 'Y' THEN
              DISPLAY "Item description:"
              ACCEPT WS-ITEM-DESCRIPTION (I)
              DISPLAY "Item price:"
              ACCEPT WS-ITEM-PRICE (I)
              DISPLAY "Item quantity:"
              ACCEPT WS-ITEM-QUANTITY (I)
              COMPUTE WS-ITEM-COST (I) = WS-ITEM-QUANTITY (I) * 
               WS-ITEM-PRICE (I)
              ADD WS-ITEM-QUANTITY (I) TO WS-TOTAL-QUANTITY
              ADD WS-ITEM-COST  (I) TO WS-TOTAL-COST
              ADD 1 TO I
           END-IF.

       0004-CALCULATE-DISCOUNT.
           IF WS-TOTAL-COST IS GREATER THAN WS-MINIMUM-FOR-DISCOUNT THEN
               COMPUTE WS-TOTAL-COST = WS-TOTAL-COST * WS-DISCOUNT
           END-IF.

       0005-DISPLAY-BILL.
           MOVE WS-TOTAL-COST TO WS-DISPLAY-TOTAL-COST.
           MOVE WS-TOTAL-QUANTITY TO WS-DISPLAY-TOTAL-QUANTITY.
           DISPLAY "Total cost: ", WS-DISPLAY-TOTAL-COST.
           DISPLAY "Total quantity: ", WS-DISPLAY-TOTAL-QUANTITY.

       END PROGRAM PETSTORE.
