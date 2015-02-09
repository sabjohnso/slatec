*DECK SPLPQX
      SUBROUTINE SPLPQX (LUN, KPRINT, IPASS)
C***BEGIN PROLOGUE  SPLPQX
C***PURPOSE  Quick check for SPLP.
C***LIBRARY   SLATEC
C***TYPE      SINGLE PRECISION (SPLPQX-S, DPLPQX-D)
C***AUTHOR  (UNKNOWN)
C***ROUTINES CALLED  PASS, SCOPY, SPLP, USRMAT
C***REVISION HISTORY  (YYMMDD)
C   ??????  DATE WRITTEN
C   890911  Removed unnecessary intrinsics.  (WRB)
C   891214  Prologue converted to Version 4.0 format.  (BAB)
C   901013  Added additional printout on failure.  (RWC)
C***END PROLOGUE  SPLPQX
      EXTERNAL USRMAT
      REAL COSTS(37)
      DIMENSION PRGOPT(50), DATTRV(210), BL(60), BU(60)
      DIMENSION IND(60), PRIMAL(60), DUALS(60), IBASIS(60)
      DIMENSION WORK(800), IWORK(900), ISOLN(14)
      DIMENSION D(14,37)
C***FIRST EXECUTABLE STATEMENT  SPLPQX
      IF(KPRINT.GE.2) WRITE(LUN,999)
  999 FORMAT ('1 SPLP QUICK CHECK')
      ICNT=1
      ZERO = 0.0
C
C     DEFINE WORKING ARRAY LENGTHS
C
      LIW = 900
      LW = 800
      MRELAS = 14
      NVARS = 37
C
C     DEFINE THE ARRAY COSTS(*) FOR THE OBJECTIVE FUNCTION
C
      COSTS(1) = 1.030
      COSTS(2) = 0.985
      COSTS(3) = 0.997
      COSTS(4) = 1.036
      COSTS(5) = 1.005
      COSTS(6) = 0.980
      COSTS(7) = 1.004
      COSTS(8) = 0.993
      COSTS(9) = 1.018
      COSTS(10) = 0.947
      COSTS(11) = 0.910
      COSTS(12) = 1.028
      COSTS(13) = 0.957
      COSTS(14) = 1.025
      COSTS(15) = 1.036
      COSTS(16) = 1.060
      COSTS(17) = 0.954
      COSTS(18) = 0.891
      COSTS(19) = 0.921
      COSTS(20) = 1.040
      COSTS(21) = 0.912
      COSTS(22) = 0.926
      COSTS(23) = 1.000
      COSTS(24) = 0.000
      COSTS(25) = 0.000
      COSTS(26) = 0.000
      COSTS(27) = 0.000
      COSTS(28) = 0.000
      COSTS(29) = 0.000
      COSTS(30) = 0.000
      COSTS(31) = 0.000
      COSTS(32) = 0.000
      COSTS(33) = 0.000
      COSTS(34) = 0.000
      COSTS(35) = 0.000
      COSTS(36) = 0.000
      COSTS(37) = 0.000
C
C     PLACE THE NONZERO INFORMATION ABOUT THE MATRIX IN DATTRV(*)
C
      CALL SCOPY(14*37, ZERO, 0, D, 1)
      D(1,1) = 1.04000
      D(1,23) = 1.00000
      D(1,24) = -1.00000
      D(2,6) = 0.04125
      D(2,7) = 0.05250
      D(2,17) = 0.04875
      D(2,24) = 1.00000
      D(2,25) = -1.00000
      D(3,8) = 0.05625
      D(3,9) = 0.06875
      D(3,11) = 0.02250
      D(3,25) = 1.00000
      D(3,26) = -1.00000
      D(4,2) = 1.04000
      D(4,3) = 1.05375
      D(4,5) = 1.06125
      D(4,12) = 0.08000
      D(4,16) = 0.09375
      D(4,18) = 0.03750
      D(4,19) = 0.04625
      D(4,20) = 0.08125
      D(4,22) = 0.05250
      D(4,26) = 1.00000
      D(4,27) = -1.00000
      D(5,10) = 0.04375
      D(5,27) = 1.00000
      D(5,28) = -1.00000
      D(6,4) = 1.05875
      D(6,13) = 0.04500
      D(6,14) = 0.06375
      D(6,15) = 0.06625
      D(6,21) = 0.05000
      D(6,28) = 1.00000
      D(6,29) = -1.00000
      D(7,6) = 1.04125
      D(7,7) = 1.05250
      D(7,8) = 1.05625
      D(7,9) = 1.06875
      D(7,11) = 0.02250
      D(7,17) = 0.04875
      D(7,29) = 1.00000
      D(7,30) = -1.00000
      D(8,10) = 1.04375
      D(8,12) = 0.08000
      D(8,13) = 0.04500
      D(8,14) = 0.06375
      D(8,15) = 0.06625
      D(8,16) = 0.09375
      D(8,18) = 0.03750
      D(8,19) = 0.04625
      D(8,20) = 0.08125
      D(8,21) = 0.05000
      D(8,22) = 0.05250
      D(8,30) = 1.00000
      D(8,31) = -1.00000
      D(9,11) = 1.02250
      D(9,17) = 0.04875
      D(9,31) = 1.00000
      D(9,32) = -1.00000
      D(10,12) = 1.08000
      D(10,13) = 1.04500
      D(10,14) = 1.06375
      D(10,15) = 1.06625
      D(10,16) = 1.09375
      D(10,18) = 0.03750
      D(10,19) = 0.04625
      D(10,20) = 0.08125
      D(10,21) = 0.05000
      D(10,22) = 0.05250
      D(10,32) = 1.00000
      D(10,33) = -1.00000
      D(11,17) = 1.04875
      D(11,33) = 1.00000
      D(11,34) = -1.00000
      D(12,18) = 1.03750
      D(12,19) = 1.04625
      D(12,20) = 1.08125
      D(12,21) = 1.05000
      D(12,22) = 0.05250
      D(12,34) = 1.00000
      D(12,35) = -1.00000
      D(13,35) = 1.00000
      D(13,36) = -1.00000
      D(14,22) = 1.05250
      D(14,36) = 1.00000
      D(14,37) = -1.00000
      KOUNT = 1
      DO 20 MM=1,NVARS
        DATTRV(KOUNT) = -MM
        DO 10 KK=1,MRELAS
          IF (D(KK,MM).EQ.ZERO) GO TO 10
          KOUNT = KOUNT + 1
          DATTRV(KOUNT) = KK
          KOUNT = KOUNT + 1
          DATTRV(KOUNT) = D(KK,MM)
   10   CONTINUE
        KOUNT = KOUNT + 1
   20 CONTINUE
      DATTRV(KOUNT) = ZERO
C
C     NON-NEGATIVITY CONSTRAINT
C
      DO 30 IC=1,NVARS
        BL(IC) = ZERO
        IND(IC) = 3
        BU(IC) = 10000000.000
   30 CONTINUE
C
C     LE CONSTRAINTS
C
      DO 40 IV=1,MRELAS
        IVV = IV + NVARS
        IND(IVV) = 3
        BL(IVV) = 100.00000
        BU(IVV) = 100000000.00000
   40 CONTINUE
      PRGOPT(01) = 18
      PRGOPT(02) = 59
      PRGOPT(03) = 0
      PRGOPT(04) = 1
      PRGOPT(05) = 3
      PRGOPT(06) = 8
      PRGOPT(07) = 10
      PRGOPT(08) = 11
      PRGOPT(09) = 16
      PRGOPT(10) = 17
      PRGOPT(11) = 21
      PRGOPT(12) = 22
      PRGOPT(13) = 24
      PRGOPT(14) = 25
      PRGOPT(15) = 27
      PRGOPT(16) = 28
      PRGOPT(17) = 35
      PRGOPT(18) = 21
      PRGOPT(19) =51
      PRGOPT(20) = 0
      PRGOPT(21) = 1
      CALL SPLP(USRMAT, MRELAS, NVARS, COSTS, PRGOPT, DATTRV, BL, BU,
     * IND, INFO, PRIMAL, DUALS, IBASIS, WORK, LW, IWORK, LIW)
C
C     LOOK FOR THE KNOWN BASIS AT THE SOLN., NOW IS ISOLN(*).
C
      DO 50 I=1,MRELAS
         ISOLN(I) = PRGOPT(I+3)
   50 CONTINUE
C
      IPASS = 1
      DO 70 J=1,MRELAS
         DO 60 I=1,MRELAS
            IF (ISOLN(I).EQ.IBASIS(J)) GO TO 70
   60    CONTINUE
         IPASS = 0
         GO TO 80
   70 CONTINUE
C
   80 IF (KPRINT.GE.2) WRITE (LUN, 99997) (ISOLN(I), IBASIS(I),
     *   I=1,MRELAS)
C
      IF (KPRINT.GE.2 .OR. (KPRINT.EQ.1.AND.IPASS.NE.1))
     *   CALL PASS (LUN, ICNT, IPASS)
C
C     HERE IPASS=0 IF CODE FAILED QUICK CHECK;
C               =1 IF CODE PASSED QUICK CHECK.
C
      IF (KPRINT.GE.1 .AND. IPASS.NE.1) WRITE (LUN,99999)
      IF (KPRINT.GE.2 .AND. IPASS.EQ.1) WRITE (LUN,99998)
      RETURN
C
99997 FORMAT (/'     ISOLN    IBASIS'/(2I10))
99998 FORMAT (/' ************ SPLP PASSED ALL TESTS *****************')
99999 FORMAT (/' ************ SPLP FAILED SOME TESTS ****************')
      END
