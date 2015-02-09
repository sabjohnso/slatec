*DECK CQAWO
      SUBROUTINE CQAWO (LUN, KPRINT, IPASS)
C***BEGIN PROLOGUE  CQAWO
C***PURPOSE  Quick check for QAWO.
C***LIBRARY   SLATEC
C***TYPE      SINGLE PRECISION (CQAWO-S, CDQAWO-D)
C***AUTHOR  (UNKNOWN)
C***ROUTINES CALLED  CPRIN, F0O, F1O, F2O, QAWO, R1MACH
C***REVISION HISTORY  (YYMMDD)
C   ??????  DATE WRITTEN
C   891214  Prologue converted to Version 4.0 format.  (BAB)
C   901205  Added PASS/FAIL message and changed the name of the first
C           argument.  (RWC)
C   910501  Added PURPOSE and TYPE records.  (WRB)
C***END PROLOGUE  CQAWO
C
C FOR FURTHER DOCUMENTATION SEE ROUTINE CQPDOC
C
      REAL A,ABSERR,B,EPMACH,EPSABS,
     *  EPSREL,ERROR,EXACT0,F0O,F1O,F2O,
     *  OFLOW,OMEGA,PI,RESULT,R1MACH,UFLOW,WORK
      INTEGER IER,IERV,INTEGR,IP,IPASS,IWORK,KPRINT,LAST,LENW,LUN,
     *  MAXP1,NEVAL
      DIMENSION WORK(1325),IWORK(400),IERV(4)
      EXTERNAL F0O,F1O,F2O
      DATA EXACT0/0.1042872789432789E+05/
      DATA PI/0.31415926535897932E+01/
C***FIRST EXECUTABLE STATEMENT  CQAWO
      IF (KPRINT.GE.2) WRITE (LUN, '(''1QAWO QUICK CHECK''/)')
C
C TEST ON IER = 0
C
      IPASS = 1
      MAXP1 = 21
      LENIW = 400
      LENW = LENIW*2+MAXP1*25
      EPSABS = 0.0E+00
      EPMACH = R1MACH(4)
      EPSREL = MAX(SQRT(EPMACH),0.1E-07)
      A = 0.0E+00
      B = PI
      OMEGA = 0.1E+01
      INTEGR = 2
      CALL QAWO(F0O,A,B,OMEGA,INTEGR,EPSABS,EPSREL,RESULT,ABSERR,NEVAL,
     *  IER,LENIW,MAXP1,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IP = 0
      ERROR = ABS(EXACT0-RESULT)
      IF(IER.EQ.0.AND.ERROR.LE.ABSERR.AND.ABSERR.LE.EPSREL*ABS(EXACT0))
     *  IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL CPRIN(LUN,0,KPRINT,IP,EXACT0,RESULT,ABSERR,NEVAL,IERV,1)
C
C TEST ON IER = 1
C
      LENIW = 2
      LENW = LENIW*2+MAXP1*25
      CALL QAWO(F0O,A,B,OMEGA,INTEGR,EPSABS,EPSREL,RESULT,ABSERR,NEVAL,
     *  IER,LENIW,MAXP1,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IP = 0
      IF(IER.EQ.1) IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL CPRIN(LUN,1,KPRINT,IP,EXACT0,RESULT,ABSERR,NEVAL,IERV,1)
C
C TEST ON IER = 2 OR 4 OR 1
C
      UFLOW = R1MACH(1)
      LENIW = 400
      LENW = LENIW*2+MAXP1*25
      CALL QAWO(F0O,A,B,OMEGA,INTEGR,UFLOW,0.0E+00,RESULT,ABSERR,NEVAL,
     *  IER,LENIW,MAXP1,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IERV(2) = 4
      IERV(3) = 1
      IP = 0
      IF(IER.EQ.2.OR.IER.EQ.4.OR.IER.EQ.1) IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL CPRIN(LUN,2,KPRINT,IP,EXACT0,RESULT,ABSERR,NEVAL,IERV,3)
C
C TEST ON IER = 3 OR 4 OR 1
C
      B = 0.5E+01
      OMEGA = 0.0E+00
      INTEGR = 1
      CALL QAWO(F1O,A,B,OMEGA,INTEGR,UFLOW,0.0E+00,RESULT,ABSERR,NEVAL,
     *  IER,LENIW,MAXP1,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IERV(2) = 4
      IERV(3) = 1
      IP = 0
      IF(IER.EQ.3.OR.IER.EQ.4.OR.IER.EQ.1) IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL CPRIN(LUN,3,KPRINT,IP,PI,RESULT,ABSERR,NEVAL,IERV,3)
C
C TEST ON IER = 5
C
      B = 0.1E+01
      OFLOW = R1MACH(2)
      CALL QAWO(F2O,A,B,OMEGA,INTEGR,EPSABS,EPSREL,RESULT,ABSERR,NEVAL,
     *  IER,LENIW,MAXP1,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IP = 0
      IF(IER.EQ.5) IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL CPRIN(LUN,5,KPRINT,IP,OFLOW,RESULT,ABSERR,NEVAL,IERV,1)
C
C TEST ON IER = 6
C
      INTEGR = 3
      CALL QAWO(F0O,A,B,OMEGA,INTEGR,EPSABS,EPSREL,RESULT,ABSERR,NEVAL,
     *  IER,LENIW,MAXP1,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IP = 0
      IF(IER.EQ.6.AND.RESULT.EQ.0.0E+00.AND.ABSERR.EQ.0.0E+00.AND.
     *  NEVAL.EQ.0.AND.LAST.EQ.0) IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL CPRIN(LUN,6,KPRINT,IP,EXACT0,RESULT,ABSERR,NEVAL,IERV,1)
C
      IF (KPRINT.GE.1) THEN
         IF (IPASS.EQ.0) THEN
            WRITE(LUN, '(/'' SOME TEST(S) IN CQAWO FAILED''/)')
         ELSEIF (KPRINT.GE.2) THEN
            WRITE(LUN, '(/'' ALL TEST(S) IN CQAWO PASSED''/)')
         ENDIF
      ENDIF
      RETURN
      END
