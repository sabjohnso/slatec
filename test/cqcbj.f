*DECK CQCBJ
      SUBROUTINE CQCBJ (LUN, KPRINT, IPASS)
C***BEGIN PROLOGUE  CQCBJ
C***SUBSIDIARY
C***PURPOSE  Quick check for SLATEC subroutine
C            CBESJ
C***LIBRARY   SLATEC
C***CATEGORY  C10A4
C***TYPE      COMPLEX (CQCBJ-C, ZQCBJ-Z)
C***KEYWORDS  QUICK CHECK, CBESJ
C***AUTHOR  Amos, Don, (SNL)
C           Goudy, Sue, (SNL)
C           Walton, Lee, (SNL)
C***DESCRIPTION
C
C *Usage:
C
C        INTEGER  LUN, KPRINT, IPASS
C
C        CALL CQCBJ (LUN, KPRINT, IPASS)
C
C *Arguments:
C
C     LUN    :IN  is the unit number to which output is to be written.
C
C     KPRINT :IN  controls the amount of output, as specified in the
C                 SLATEC Guidelines.
C
C     IPASS  :OUT indicates whether the test passed or failed.
C                 A value of one is good, indicating no failures.
C
C *Description:
C
C   CQCBJ is a quick check routine for the complex J Bessel function
C    generated by subroutine CBESJ.
C
C   CQCBJ generates sequences of J Bessel functions from CBESJ
C    and checks them against the evaluation from the formula
C
C            J(FNU,Z) = 0.5*( H(1,FNU,Z) + H(2,FNU,Z) )
C
C    where -PI.lt.arg(Z).le.PI for abs(Z).ge.FNU.
C
C   For abs(Z).lt.FNU, the first N members of a sequence of length
C    N+16 are checked against a corresponding N member sequence where
C    both sequences are generated by CBESJ beginning at order FNU.
C
C***REFERENCES  Abramowitz, M. and Stegun, I. A., Handbook
C                 of Mathematical Functions, Dover Publications,
C                 New York, 1964.
C               Amos, D. E., A Subroutine Package for Bessel
C                 Functions of a Complex Argument and Nonnegative
C                 Order, SAND85-1018, May, 1985.
C***ROUTINES CALLED  CBESH, CBESJ, I1MACH, R1MACH
C***REVISION HISTORY  (YYMMDD)
C   830501  DATE WRITTEN
C   890831  Revised to meet new SLATEC standards
C
C***END PROLOGUE  CQCBJ
C
C*Internal Notes:
C   Machine constants are defined by functions I1MACH and R1MACH.
C
C   The parameter MQC can have values 1 (the default) for a faster,
C   less definitive test or 2 for a slower, more definitive test.
C
C**End
C
C  Set test complexity parameter.
C
      INTEGER  MQC
      PARAMETER (MQC=1)
C
C  Declare arguments.
C
      INTEGER  LUN, KPRINT, IPASS
C
C  Declare external functions.
C
      INTEGER  I1MACH
      REAL  R1MACH
      EXTERNAL  I1MACH, R1MACH
C
C  Declare local variables.
C
      COMPLEX  CHALF, COE1, COE2, CW, V, W, Y, Z
      REAL  AA, AB, AER, ALIM, ATOL, AV, CC, CT, DD, DIG, ELIM, EPS, ER,
     *   ERTOL, FILM, FNU, FNUL, GNU, HPI, PI, R, RL, RM, R1M4, R1M5,
     *   R2, SLAK, ST, T, TOL, TS, XNU, XX, YY
      INTEGER  I, ICASE, IERR, IL, IR, IRB, IT, ITL, K, KDO, KEPS, KK,
     *   KODE, K1, K2, LFLG, M, MFLG, N, NL, NU, NUL, NZ, NZ1, NZ2
      DIMENSION  AER(20), KDO(20), KEPS(20), T(20), V(20), W(20),
     *   XNU(20), Y(20)
C
C***FIRST EXECUTABLE STATEMENT  CQCBJ
      IF (KPRINT.GE.2) THEN
        WRITE (LUN,99999)
99999   FORMAT (' QUICK CHECK ROUTINE FOR THE J BESSEL FUNCTION FROM ',
     *     'CBESJ'/)
      ENDIF
C-----------------------------------------------------------------------
C     Set parameters related to machine constants.
C     TOL is the approximate unit roundoff limited to 1.0E-18.
C     ELIM is the approximate exponential over- and underflow limit.
C     exp(-ELIM).lt.exp(-ALIM)=exp(-ELIM)/TOL    and
C     exp(ELIM).gt.exp(ALIM)=exp(ELIM)*TOL       are intervals near
C     underflow and overflow limits where scaled arithmetic is done.
C     RL is the lower boundary of the asymptotic expansion for large Z.
C     DIG = number of base 10 digits in TOL = 10**(-DIG).
C     FNUL is the lower boundary of the asymptotic series for large FNU.
C-----------------------------------------------------------------------
      R1M4 = R1MACH(4)
      TOL = MAX(R1M4,1.0E-18)
      ATOL = 100.0E0*TOL
      AA = -LOG10(R1M4)
      K1 = I1MACH(12)
      K2 = I1MACH(13)
      R1M5 = R1MACH(5)
      K = MIN(ABS(K1),ABS(K2))
      ELIM = 2.303E0*(K*R1M5-3.0E0)
      AB = AA*2.303E0
      ALIM = ELIM + MAX(-AB,-41.45E0)
      DIG = MIN(AA,18.0E0)
      FNUL = 10.0E0 + 6.0E0*(DIG-3.0E0)
      RL = 1.2E0*DIG + 3.0E0
      SLAK = 3.0E0+4.0E0*(-LOG10(TOL)-7.0E0)/11.0E0
      SLAK = MAX(SLAK,3.0E0)
      ERTOL = TOL*10.0E0**SLAK
      RM = 0.5E0*(ALIM + ELIM)
      RM = MIN(RM,200.0E0)
      RM = MAX(RM,RL+10.0E0)
      R2 = MIN(RM,FNUL)
      IF (KPRINT.GE.2) THEN
        WRITE (LUN,99998)
99998   FORMAT (' PARAMETERS'/
     *     5X,'TOL ',8X,'ELIM',8X,'ALIM',8X,'RL  ',8X,'FNUL',8X,'DIG')
        WRITE (LUN,99997) TOL, ELIM, ALIM, RL, FNUL, DIG
99997   FORMAT (1X,6E12.4/)
      ENDIF
C-----------------------------------------------------------------------
C     Set other constants needed in the tests.
C-----------------------------------------------------------------------
      CHALF = (0.5E0,0.0E0)
      HPI = 2.0E0*ATAN(1.0E0)
      PI = HPI + HPI
C-----------------------------------------------------------------------
C     Generate angles for construction of complex Z to be used in tests.
C-----------------------------------------------------------------------
C     KDO(K), K = 1,IL  determines which of the IL angles in -PI to PI
C     are used to compute values of Z.
C       KDO(K) = 0  means that the index K will be used for one or two
C                   values of Z, depending on the choice of KEPS(K)
C              = 1  means that the index K and the corresponding angle
C                   will be skipped
C     KEPS(K), K = 1,IL determines which of the angles get incremented
C     up and down to put values of Z in regions where different
C     formulae are used.
C       KEPS(K)  = 0  means that the angle will be used without change
C                = 1  means that the angle will be incremented up and
C                   down by EPS
C     The angles to be used are stored in the T(I) array, I = 1,ITL.
C-----------------------------------------------------------------------
      IF (MQC.NE.2) THEN
        NL = 2
        IL = 5
        DO 5 I = 1,IL
          KEPS(I) = 0
          KDO(I) = 0
    5   CONTINUE
        NUL = 5
        XNU(1) = 0.0E0
        XNU(2) = 1.0E0
        XNU(3) = 2.0E0
        XNU(4) = 0.5E0*FNUL
        XNU(5) = FNUL + 1.1E0
      ELSE
        NL = 4
        IL = 13
        DO 6 I = 1,IL
          KDO(I) = 0
          KEPS(I) = 0
    6   CONTINUE
        KDO(2) = 1
        KDO(6) = 1
        KDO(8) = 1
        KDO(12) = 1
        KEPS(3) = 1
        KEPS(4) = 1
        KEPS(5) = 1
        KEPS(9) = 1
        KEPS(10) = 1
        KEPS(11) = 1
        NUL = 6
        XNU(1) = 0.0E0
        XNU(2) = 0.6E0
        XNU(3) = 1.3E0
        XNU(4) = 2.0E0
        XNU(5) = 0.5E0*FNUL
        XNU(6) = FNUL + 1.1E0
      ENDIF
      I = 2
      EPS = 0.01E0
      FILM = IL - 1
      T(1) = -PI + EPS
      DO 30 K = 2,IL
        IF (KDO(K).EQ.0) THEN
          T(I) = PI*(-IL+2*K-1)/FILM
          IF (KEPS(K).EQ.0) THEN
            TS = T(I)
            T(I) = TS - EPS
            I = I + 1
            T(I) = TS + EPS
          ELSE
            I = I + 1
          ENDIF
        ENDIF
   30 CONTINUE
      ITL = I - 1
C-----------------------------------------------------------------------
C     Test values of Z in -PI.lt.arg(Z).le.PI.
C-----------------------------------------------------------------------
      IF (KPRINT.GE.2) THEN
        WRITE (LUN,99996)
99996   FORMAT (' CHECKS IN THE (Z,FNU) SPACE'/)
      ENDIF
      LFLG = 0
      DO 260 KODE = 1,2
        DO 250 N = 1,NL
          DO 240 NU = 1,NUL
            FNU = XNU(NU)
            DO 230 ICASE = 1,3
              IRB = MIN(2,ICASE)
              DO 220 IR = IRB,4
C-------------- switch (icase)
                GO TO (50, 60, 70), ICASE
   50           CONTINUE
                  R = (EPS*(4-IR)+2.0E0*(IR-1))/3.0E0
                  GO TO 80
   60           CONTINUE
                  R = (2.0E0*(4-IR)+R2*(IR-1))/3.0E0
                  GO TO 80
   70           CONTINUE
                  IF (R2.GE.RM) GO TO 230
                  R = (R2*(4-IR)+RM*(IR-1))/3.0E0
   80           CONTINUE
C-------------- end switch
                GNU = FNU + (N-1)
                DO 210 IT = 1,ITL
                  CT = COS(T(IT))
                  ST = SIN(T(IT))
                  IF (ABS(CT).LT.ATOL) CT = 0.0E0
                  IF (ABS(ST).LT.ATOL) ST = 0.0E0
                  Z = CMPLX(R*CT,R*ST)
                  XX = REAL(Z)
                  YY = AIMAG(Z)
                  IF (R.GE.GNU) THEN
C------------------ Cases for abs(Z).ge.FNU+N-1
                    CALL CBESJ(Z, FNU, KODE, N, V, NZ, IERR)
C------------------ Underflow - skip test for this case.
                    IF (NZ.NE.0) GO TO 210
                    CALL CBESH(Z, FNU, KODE, 1, N, W, NZ1, IERR)
                    CALL CBESH(Z, FNU, KODE, 2, N, Y, NZ2, IERR)
                    IF (KODE.EQ.2) THEN
C-------------------- Adjust scaling of H functions.
                      CC = -YY - ABS(YY)
                      IF (CC.GT.(-ALIM)) THEN
                        CW = CMPLX(CC,XX)
                        COE1 = EXP(CW)
                      ELSE
                        COE1 = CMPLX(0.0E0,0.0E0)
                      ENDIF
                      DD = YY - ABS(YY)
                      IF (DD.GT.(-ALIM)) THEN
                        CW = CMPLX(DD,-XX)
                        COE2 = EXP(CW)
                      ELSE
                        COE2 = CMPLX(0.0E0,0.0E0)
                      ENDIF
                      DO 130 KK = 1,N
                        Y(KK) = Y(KK)*COE2
                        W(KK) = W(KK)*COE1
  130                 CONTINUE
                    ENDIF
                  ELSE
C------------------ Cases for abs(Z).lt.FNU+N-1
                    M = N + 16
                    CALL CBESJ(Z, FNU, KODE, M, V, NZ, IERR)
C------------------ Underflow at end of sequence - skip test
                    IF (NZ.GT.10) GO TO 210
                    CALL CBESJ(Z, FNU, KODE, N, W, NZ, IERR)
                    DO 150 KK = 1,N
                      Y(KK) = W(KK)
  150               CONTINUE
                  ENDIF
C-----------------------------------------------------------------------
C     If abs(Z).ge.FNU+N-1 then the error test compares J(Z<FNU) with
C     0.5*(H1(Z,FNU) + H2(Z,FNU)).
C     If abs(Z).lt.FNU+N-1 then the error test ensures that calculations
C     begun in one region of the (Z,FNU) plane and carried into another
C     region do not diverge from calculations carried out entirely in
C     one region.  This is an internal consistency check.
C-----------------------------------------------------------------------
                  MFLG = 0
                  DO 190 I = 1,N
                    AB = FNU+ I - 1
                    AA = MAX(2.0E0,AB)
                    CW = (W(I)+Y(I))*CHALF
                    AV = CABS(V(I))
                    ER = CABS(CW-V(I))
                    IF (AV.NE.0.0E0) THEN
                      IF (YY.EQ.0.0E0) THEN
                        IF (ABS(XX).LT.AA) ER = ER/AV
                      ELSE
                        ER=ER/AV
                      ENDIF
                    ENDIF
                    AER(I) = ER
                    IF (ER.GT.ERTOL) MFLG = 1
  190             CONTINUE
                  IF (MFLG.NE.0) THEN
                    IF (LFLG.EQ.0) THEN
                      IF (KPRINT.GE.2) THEN
                        WRITE (LUN,99995) ERTOL
99995                   FORMAT (' CASES WHICH VIOLATE THE RELATIVE ',
     *                     'ERROR TEST WITH ERTOL=', E12.4/)
                        WRITE (LUN,99994)
99994                   FORMAT (' INPUT TO CBESJ   Z, FNU, KODE, N')
                      ENDIF
                      IF (KPRINT.GE.3) THEN
                        IF (R.GE.GNU) THEN
                          WRITE (LUN,99993)
99993                     FORMAT (' COMPARE WITH AVERAGE OF H1 AND H2 ',
     *                       'FUNCTIONS FOR THE SAME INPUT')
                          WRITE (LUN,99992)
99992                     FORMAT (' RESULTS FROM CBESJ    NZ, V(KK)')
                          WRITE (LUN,99991)
99991                     FORMAT (' RESULTS FROM CBESH   NZ1, W(KK)')
                          WRITE (LUN,99990)
99990                     FORMAT (' RESULTS FROM CBESH   NZ2, Y(KK)')
                        ELSE
                          WRITE (LUN,99989)
99989                     FORMAT (' RESULTS FROM CBESJ    NZ, W(KK)')
                        ENDIF
                        WRITE (LUN,99988)
99988                   FORMAT (' TEST CASE INDICES   IR, IT, ICASE'/)
                      ENDIF
                    ENDIF
                    LFLG = LFLG + 1
                    IF (KPRINT.GE.2) THEN
                      WRITE (LUN,99987) Z, FNU, KODE, N
99987                 FORMAT ('   INPUT:   Z=',2E12.4,3X,'FNU=',E12.4,
     *                   3X,'KODE=',I3,3X,'N=',I3)
                    ENDIF
                    IF (KPRINT.GE.3) THEN
                      WRITE (LUN,99986) (AER(K),K=1,N)
99986                 FORMAT ('   ERROR:   AER(K)=',4E12.4)
                      IF (R.GE.GNU) THEN
                        KK = MAX(NZ1,NZ2) + 1
                        KK = MIN(N,KK)
                        WRITE (LUN,99985) NZ, V(KK)
99985                   FORMAT (' RESULTS:   NZ=',I3,3X,'V(KK)=',2E12.4)
                        WRITE (LUN,99984) NZ1, W(KK)
99984                   FORMAT (' RESULTS:  NZ1=',I3,3X,'W(KK)=',2E12.4)
                        WRITE (LUN,99983) NZ2, Y(KK)
99983                   FORMAT (' RESULTS:  NZ2=',I3,3X,'Y(KK)=',2E12.4)
                      ELSE
                        KK = N - NZ
                        WRITE (LUN,99982) NZ, W(KK)
99982                   FORMAT (' RESULTS:   NZ=',I3,3X,'W(KK)=',2E12.4)
                      ENDIF
                      WRITE (LUN,99981) IR, IT, ICASE
99981                 FORMAT ('    CASE:  IR=',I3,3X,'IT=',I3,3X,
     *                   'ICASE=',I3/)
                    ENDIF
                  ENDIF
  210           CONTINUE
  220         CONTINUE
  230       CONTINUE
  240     CONTINUE
  250   CONTINUE
  260 CONTINUE
      IF (KPRINT.GE.2) THEN
        IF (LFLG.EQ.0) THEN
          WRITE (LUN,99980)
99980     FORMAT (' QUICK CHECKS OK')
        ELSE
          WRITE (LUN,99979) LFLG
99979     FORMAT (' ***',I5,' FAILURE(S) FOR CBESJ IN THE (Z,FNU)',
     *       ' PLANE')
        ENDIF
      ENDIF
      IPASS=0
      IF (LFLG.EQ.0) THEN
        IPASS=1
      ENDIF
      IF (IPASS.EQ.1.AND.KPRINT.GE.2) THEN
        WRITE (LUN,99978)
99978   FORMAT (/' ****** CBESJ  PASSED ALL TESTS  ******'/)
      ENDIF
      IF (IPASS.EQ.0.AND.KPRINT.GE.1) THEN
        WRITE (LUN,99977)
99977   FORMAT (/' ****** CBESJ  FAILED SOME TESTS ******'/)
      ENDIF
      RETURN
      END
