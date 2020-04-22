       IDENTIFICATION DIVISION.
       PROGRAM-ID. EMPLOYEES.
       AUTHOR. BRUNO PACHECO.
      *******************************************
      *      EMPLOYEES SALARY CALCULATION       *
      *******************************************

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMPLOYEEFILE ASSIGN TO "employees.dat"
            FILE STATUS IS FILE-CHECK-KEY
            ORGANIZATION IS LINE SEQUENTIAL.
                     
           SELECT NEWEMPLOYEEFILE ASSIGN TO "new_employees.dat"
            ORGANIZATION IS LINE SEQUENTIAL.

           SELECT REPORTFILE ASSIGN TO "salary.lpt"
            ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  EMPLOYEEFILE.
       01  EMPDETAILS.
           88 ENDOFFILE         VALUE HIGH-VALUES.
           02 EMPLOYEEID        PIC 9(7).
           02 EMPLOYEENAME.
              03 LASTNAME       PIC X(10).
              03 FIRSTNAME      PIC X(10).
           02 STARTDATE.
              03 START-YEAR     PIC 9(4).
              03 START-MONTH    PIC 9(2).
              03 START-DAY      PIC 9(2).
           02 SALARY            PIC 9(9).
           02 GENDER            PIC X.
       FD  NEWEMPLOYEEFILE.
       01  EMPDETAILS.
           88 ENDOFFILE         VALUE HIGH-VALUES.
           02 EMPLOYEEID        PIC 9(7).
           02 EMPLOYEENAME.
              03 LASTNAME       PIC X(10).
              03 FIRSTNAME      PIC X(10).
           02 STARTDATE.
              03 START-YEAR     PIC 9(4).
              03 START-MONTH    PIC 9(2).
              03 START-DAY      PIC 9(2).
            02 SALARY           PIC 9(9).
            02 GENDER           PIC X.

       WORKING-STORAGE SECTION.
       01  WS-WORK-AREAS.
           05 FILE-CHECK-KEY    PIC X(2).

       PROCEDURE DIVISION.
       
       0001-READ-EMPLOYEES.
           GO TO 9999-FINISH-PROGRAM.
       0001-END.

       9999-FINISH-PROGRAM.
           STOP RUN.
       9999-END.
       
       END PROGRAM EMPLOYEES.
