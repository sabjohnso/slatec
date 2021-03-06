*DECK CDQAGS
      SUBROUTINE CDQAGS (LUN, KPRINT, IPASS)
C***BEGIN PROLOGUE  CDQAGS
C***PURPOSE  Quick check for DQAGS.
C***LIBRARY   SLATEC
C***TYPE      DOUBLE PRECISION (CQAGS-S, CDQAGS-D)
C***AUTHOR  (UNKNOWN)
C***ROUTINES CALLED  D1MACH, DF0S, DF1S, DF2S, DF3S, DF4S, DF5S, DPRIN,
C                    DQAGS
C***REVISION HISTORY  (YYMMDD)
C   ??????  DATE WRITTEN
C   891214  Prologue converted to Version 4.0 format.  (BAB)
C   901205  Added PASS/FAIL message and changed the name of the first
C           argument.  (RWC)
C   910501  Added PURPOSE and TYPE records.  (WRB)
C   911114  Modified test on IER=4 to allow IER=5.  (WRB)
C***END PROLOGUE  CDQAGS
C
C FOR FURTHER DOCUMENTATION SEE ROUTINE CQPDOC
C
      DOUBLE PRECISION A,ABSERR,B,D1MACH,EPMACH,EPSABS,
     *  EPSREL,ERROR,EXACT0,EXACT1,EXACT2,EXACT3,EXACT4,
     *  DF0S,DF1S,DF2S,DF3S,DF4S,DF5S,OFLOW,RESULT,UFLOW,WORK
      INTEGER IER,IP,IPASS,IWORK,KPRINT,LAST,LENW,LIMIT,NEVAL
      DIMENSION IERV(5),IWORK(200),WORK(800)
      EXTERNAL DF0S,DF1S,DF2S,DF3S,DF4S,DF5S
      DATA EXACT0/0.2D+01/
      DATA EXACT1/0.115470066904D+01/
      DATA EXACT2/0.909864525656D-02/
      DATA EXACT3/0.31415926535897932D+01/
      DATA EXACT4/0.19984914554328673D+04/
C***FIRST EXECUTABLE STATEMENT  CDQAGS
      IF (KPRINT.GE.2) WRITE (LUN, '(''1DQAGS QUICK CHECK''/)')
C
C TEST ON IER = 0
C
      IPASS = 1
      LIMIT = 200
      LENW = LIMIT*4
      EPSABS = 0.0D+00
      EPMACH = D1MACH(4)
      EPSREL = MAX(SQRT(EPMACH),0.1D-07)
      A = 0.0D+00
      B = 0.1D+01
      CALL DQAGS(DF0S,A,B,EPSABS,EPSREL,RESULT,ABSERR,NEVAL,IER,
     *  LIMIT,LENW,LAST,IWORK,WORK)
      ERROR = ABS(RESULT-EXACT0)
      IERV(1) = IER
      IP = 0
      IF(IER.EQ.0.AND.ERROR.LE.EPSREL*ABS(EXACT0))
     *  IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL DPRIN(LUN,0,KPRINT,IP,EXACT0,RESULT,ABSERR,NEVAL,IERV,1)
C
C TEST ON IER = 1
C
      CALL DQAGS(DF1S,A,B,EPSABS,EPSREL,RESULT,ABSERR,NEVAL,IER,
     *  1,4,LAST,IWORK,WORK)
      IERV(1) = IER
      IP = 0
      IF(IER.EQ.1)IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL DPRIN(LUN,1,KPRINT,IP,EXACT1,RESULT,ABSERR,NEVAL,IERV,1)
C
C TEST ON IER = 2 OR 4 OR 1
C
      UFLOW = D1MACH(1)
      A = 0.1D+00
      CALL DQAGS(DF2S,A,B,UFLOW,0.0D+00,RESULT,ABSERR,NEVAL,IER,
     *  LIMIT,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IERV(2) = 4
      IERV(3) = 1
      IP = 0
      IF(IER.EQ.2.OR.IER.EQ.4.OR.IER.EQ.1) IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL DPRIN(LUN,2,KPRINT,IP,EXACT2,RESULT,ABSERR,NEVAL,IERV,3)
C
C TEST ON IER = 3 OR 4 OR 1 OR 2
C
      A = 0.0D+00
      B = 0.5D+01
      CALL DQAGS(DF3S,A,B,UFLOW,0.0D+00,RESULT,ABSERR,NEVAL,IER,
     *  LIMIT,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IERV(2) = 4
      IERV(3) = 1
      IERV(4) = 2
      IP = 0
      IF(IER.EQ.3.OR.IER.EQ.4.OR.IER.EQ.1.OR.IER.EQ.2) IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL DPRIN(LUN,3,KPRINT,IP,EXACT3,RESULT,ABSERR,NEVAL,IERV,4)
C
C TEST ON IER = 4, OR 5 OR 3 OR 1 OR 0
C
      B = 0.1D+01
      CALL DQAGS(DF4S,A,B,EPSABS,EPSREL,RESULT,ABSERR,NEVAL,IER,
     *  LIMIT,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IERV(2) = 5
      IERV(3) = 3
      IERV(4) = 1
      IERV(5) = 0
      IP = 0
      IF(IER.EQ.5.OR.IER.EQ.4.OR.IER.EQ.3.OR.IER.EQ.1.OR.IER.EQ.0)
     *  IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL DPRIN(LUN,4,KPRINT,IP,EXACT4,RESULT,ABSERR,NEVAL,IERV,5)
C
C TEST ON IER = 5
C
      OFLOW = D1MACH(2)
      CALL DQAGS(DF5S,A,B,EPSABS,EPSREL,RESULT,ABSERR,NEVAL,IER,
     *  LIMIT,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IP = 0
      IF(IER.EQ.5) IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL DPRIN(LUN,5,KPRINT,IP,OFLOW,RESULT,ABSERR,NEVAL,IERV,1)
C
C TEST ON IER = 6
C
      CALL DQAGS(DF1S,A,B,EPSABS,0.0D+00,RESULT,ABSERR,NEVAL,IER,
     *  LIMIT,LENW,LAST,IWORK,WORK)
      IERV(1) = IER
      IP = 0
      IF(IER.EQ.6.AND.RESULT.EQ.0.0D+00.AND.ABSERR.EQ.0.0D+00.AND.
     *  NEVAL.EQ.0.AND.LAST.EQ.0) IP = 1
      IF(IP.EQ.0) IPASS = 0
      CALL DPRIN(LUN,6,KPRINT,IP,EXACT1,RESULT,ABSERR,NEVAL,IERV,1)
C
      IF (KPRINT.GE.1) THEN
         IF (IPASS.EQ.0) THEN
            WRITE(LUN, '(/'' SOME TEST(S) IN CDQAGS FAILED''/)')
         ELSEIF (KPRINT.GE.2) THEN
            WRITE(LUN, '(/'' ALL TEST(S) IN CDQAGS PASSED''/)')
         ENDIF
      ENDIF
      RETURN
      END
