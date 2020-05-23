       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      datatypes.
       DATA             DIVISION.
       WORKING-STORAGE  SECTION.
       01  tests pic 9   value 8.
       01  numeric-data.
           05 disp     usage display   pic s99v999   value -12.34.
           05 disp-u   usage display   pic  99v999   value  12.34.
           05 dispp    usage display   pic spppp9999 value -.0000123.
           05 dispp-u  usage display   pic  pppp9999 value  .0000123.
           05 disppp   usage display   pic s9999pppp value -12340000.
           05 disppp-u usage display   pic  9999pppp value  12340000.
           05 bin      usage binary    pic s99v999   value -12.34.
           05 bin-u    usage binary    pic  99v999   value  12.34.
           05 cmp3     usage packed-decimal pic s99v999   value -12.34.
           05 cmp3-u   usage packed-decimal pic  99v999   value  12.34.
           05 cmp5     usage comp-5         pic s99v999   value -12.34.
           05 cmp5-u   usage comp-5         pic  99v999   value  12.34.
           05 cmp6     usage comp-6         pic  99v999   value  12.34.
           05 cmpx     usage comp-x         pic s99v999   value -12.34.
           05 cmpx-u   usage comp-x         pic  99v999   value  12.34.
           05 cmpn     usage comp-n         pic s99v999   value -12.34.
           05 cmpn-u   usage comp-n         pic  99v999   value  12.34.
           05 chr      usage binary-char    signed   value -128.
           05 chr-u    usage binary-char    unsigned value 254.
           05 shrt     usage binary-short   signed   value -32768.
           05 shrt-u   usage binary-short   unsigned value 65535.
           05 long     usage binary-long    signed   value -2147483648.
           05 long-u   usage binary-long    unsigned value  4294967295.
           05 dble     usage binary-double  signed   value -4294967295.
           05 dble-u   usage binary-double  unsigned value  8294967295.
      *   05 cmp0       usage comp-0.  TODO
       01  floating-data.
           05 dbl        usage float-long      value -3.40282e+038.
           05 flt        usage float-short     value 3.40282e+038.
      *   05 b32        usage FLOAT-BINARY-32  signed.      TODO
      *   05 b64        usage FLOAT-BINARY-64  signed.      TODO
      *   05 b128       usage FLOAT-BINARY-128 signed.      TODO
      *   05 b32-u      usage FLOAT-BINARY-32  unsigned.    TODO
      *   05 b64-u      usage FLOAT-BINARY-64  unsigned.    TODO
      *   05 b128-u     usage FLOAT-BINARY-128 unsigned.    TODO
      *
      *  --> missing:   floating point edited pictures,
      *                 those are left to the reader as excercise :-)
       01  special-data.
           05 r2d2       usage bit pic 111 value b'110'.
           05 point      usage pointer.
           05 ppoint     usage program-pointer.
           05 idx        usage index.
           05 hnd        usage handle.
       01  alphanumeric-data.
           05 alpnum     pic x(36) value '\some "nmb3r 4 n00bs l1k3 m3'.
           05 alpha      pic a(36) value "thats some text".
           05 edit-num1  pic --9.999.
           05 edit-num2  pic ++9.999.
           05 edit-num3  pic zz9.999.
           05 edit-num4  pic -zz9.999   blank when zero.
       01  national-data.
           05 nat        pic n(36) value "data shown here will change.".
           05 nat-num    pic 9(12)v9(3) usage national.
           05 net-num1   pic --9.999    usage national.
           05 net-num2   pic ++9.999    usage national.
           05 net-num3   pic zz9.999    usage national.
           05 net-num4   pic -zz9.999   usage national blank when zero.
           05 nat2        pic n(36)
             value nx"0054006500730074002000E420AC".
       PROCEDURE DIVISION.
           set  idx    to 255
           set  point  to address of ppoint
           set  ppoint to entry "types"
           move cmp5   to edit-num1, edit-num2, edit-num3, edit-num4
           move cmp5   to net-num1,  net-num2,  net-num3,  net-num4

           display "disp = ", disp
           display "disp-u = ", disp-u
           display "dispp = ", dispp
           display "dispp-u = ", dispp-u
           display "disppp = ", disppp
           display "disppp-u = ", disppp-u
           display "bin = ", bin
           display "bin-u = ", bin-u
           display "cmp3 = ", cmp3
           display "cmp3-u = ", cmp3-u
           display "cmp5 = ", cmp5
           display "cmp5-u = ", cmp5-u
           display "cmp6 = ", cmp6
           display "cmpx = ", cmpx
           display "cmpx-u = ", cmpx-u
           display "cmpn = ", cmpn
           display "cmpn-u = ", cmpn-u
           display "chr = ", chr
           display "chr-u = ", chr-u
           display "shrt = ", shrt
           display "shrt-u = ", shrt-u
           display "long-u = ", long-u
           display "dble = ", dble
           display "dble-u = ", dble-u
           display "dbl = ", dbl
           display "flt = ", flt
           display "r2d2 = ", r2d2
           display "point = ", point
           display "ppoint = ", ppoint
           display "idx = ", idx
           display "hnd = ", hnd
           display "alpnum = ", alpnum
           display "alpha = ", alpha
           display "edit-num1 = ", edit-num1
           display "edit-num2 = ", edit-num2
           display "edit-num3 = ", edit-num3
           display "edit-num4 = ", edit-num4
           display "nat = ", nat
           display "net-num1 = ", net-num1
           display "net-num2 = ", net-num2
           display "net-num3 = ", net-num3
           display "net-num4 = ", net-num4
           display "nat2 = ", nat2
           
           GOBACK.
