*DECK F3P
      REAL FUNCTION F3P (X)
C***BEGIN PROLOGUE  F3P
C***PURPOSE  Subsidiary to
C***LIBRARY   SLATEC
C***AUTHOR  (UNKNOWN)
C***ROUTINES CALLED  (NONE)
C***REVISION HISTORY  (YYMMDD)
C   ??????  DATE WRITTEN
C   891214  Prologue converted to Version 4.0 format.  (BAB)
C***END PROLOGUE  F3P
      REAL X
C***FIRST EXECUTABLE STATEMENT  F3P
      F3P = 1.0
      IF(X.GT.3.1415926535897932) F3P = 0.0
      RETURN
      END