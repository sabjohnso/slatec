*DECK DF3G
      DOUBLE PRECISION FUNCTION DF3G (X)
C***BEGIN PROLOGUE  DF3G
C***PURPOSE  Subsidiary to
C***LIBRARY   SLATEC
C***AUTHOR  (UNKNOWN)
C***ROUTINES CALLED  (NONE)
C***REVISION HISTORY  (YYMMDD)
C   ??????  DATE WRITTEN
C   891214  Prologue converted to Version 4.0 format.  (BAB)
C***END PROLOGUE  DF3G
      DOUBLE PRECISION X
C***FIRST EXECUTABLE STATEMENT  DF3G
      DF3G=ABS(X-0.33D+00)**(-.90D+00)
      RETURN
      END
