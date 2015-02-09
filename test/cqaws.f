*DECK CQAWS
      SUBROUTINE CQAWS (LUN, KPRINT, IPASS)
C***BEGIN PROLOGUE  CQAWS
C***PURPOSE  Quick check for QAWS.
C***LIBRARY   SLATEC
C***TYPE      SINGLE PRECISION (CQAWS-S, CDQAWS-D)
C***AUTHOR  (UNKNOWN)
C***ROUTINES CALLED  CPRIN, F0WS, F1WS, QAWS, R1MACH
C***REVISION HISTORY  (YYMMDD)
C   ??????  DATE WRITTEN
C   891214  Prologue converted to Version 4.0 format.  (BAB)
C   901205  Added PASS/FAIL message and changed the name of the first
C           argument.  (RWC)
C   910501  Added PURPOSE and TYPE records.  (WRB)
C***END PROLOGUE  CQAWS
C
C FOR FURTHER DOCUMENTATION SEE ROUTINE CQPDOC
      REAL A,ABSERR,B,R1MACH,EPMACH,EPSABS,
     *  EPSREL,ERROR,EXACT0,EXACT1,F0WS,F1WS,ALFA,BETA,
     *  RESULT,UFLOW,WORK
      INTEGER IER,IP,IPASS,IWORK,KPRINT,LAST,LENW,LIMIT,NEVAL,INTEGR
      DIMENSION WORK(800),IWORK(200),IERV(2)
      EXTERNAL F0WS,F1WS
      DATA EXACT0/0.5350190569223644E+00/
      DATA EXACT1/0.1998491554328673E+04/
C***FIRST EXECUTABLE STATEMENT  CQAWS
      IF (KPRINT.GE.2) WRITE (LUN, '(''1QAWS QUICK CHECK''/)')
C
C TEST ON IER = 0
C
      IPASS = 1
      ALFA = -0.5E+00
      BETA = -0.5E+00
      INTEGR = 1
      A = 0.0E+00
      B = 0.1E+01
      LIMIT = 200
      LENW = LIMIT*4
      EPSABS = 0.0E+00
      EPMACH = R1MACH(4)
      EPSREL = MAX(SQRT(EPMACH),0.1E-07)
      CALL QAWS(F0WS,A,B,ALFA,BETA,INTEGR,EPSABS,EPSREL,RESULT,ABSERR,
     *  NEVAL,IER,LIMIT,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IP = 0
      ERROR = ABS(EXACT0-RESULT)
      IF(IER.EQ.0.AND.ERROR.LE.EPSREL*ABS(EXACT0))
     *  IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL CPRIN(LUN,0,KPRINT,IP,EXACT0,RESULT,ABSERR,NEVAL,IERV,1)
C
C TEST ON IER = 1
C
      CALL QAWS(F0WS,A,B,ALFA,BETA,INTEGR,EPSABS,EPSREL,RESULT,ABSERR,
     *  NEVAL,IER,2,8,LAST,IWORK,WORK)
      IERV(1) = IER
      IP = 0
      IF(IER.EQ.1) IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL CPRIN(LUN,1,KPRINT,IP,EXACT0,RESULT,ABSERR,NEVAL,IERV,1)
C
C TEST ON IER = 2 OR 1
C
      UFLOW = R1MACH(1)
      CALL QAWS(F0WS,A,B,ALFA,BETA,INTEGR,UFLOW,0.0E+00,RESULT,ABSERR,
     *  NEVAL,IER,LIMIT,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IERV(2) = 1
      IP = 0
      IF(IER.EQ.2.OR.IER.EQ.1) IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL CPRIN(LUN,2,KPRINT,IP,EXACT0,RESULT,ABSERR,NEVAL,IERV,2)
C
C TEST ON IER = 3 OR 1
C
      CALL QAWS(F1WS,A,B,ALFA,BETA,INTEGR,EPSABS,EPSREL,RESULT,ABSERR,
     *  NEVAL,IER,LIMIT,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IERV(2) = 1
      IP = 0
      IF(IER.EQ.3.OR.IER.EQ.1) IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL CPRIN(LUN,3,KPRINT,IP,EXACT1,RESULT,ABSERR,NEVAL,IERV,2)
C
C TEST ON IER = 6
C
      INTEGR = 0
      CALL QAWS(F1WS,A,B,ALFA,BETA,INTEGR,EPSABS,EPSREL,RESULT,ABSERR,
     *  NEVAL,IER,LIMIT,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IP = 0
      IF(IER.EQ.6) IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL CPRIN(LUN,6,KPRINT,IP,EXACT0,RESULT,ABSERR,NEVAL,IERV,1)
C
      IF (KPRINT.GE.1) THEN
         IF (IPASS.EQ.0) THEN
            WRITE(LUN, '(/'' SOME TEST(S) IN CQAWS FAILED''/)')
         ELSEIF (KPRINT.GE.2) THEN
            WRITE(LUN, '(/'' ALL TEST(S) IN CQAWS PASSED''/)')
         ENDIF
      ENDIF
      RETURN
      END