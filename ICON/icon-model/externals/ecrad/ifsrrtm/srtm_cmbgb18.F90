! This file has been modified for the use in ICON

SUBROUTINE SRTM_CMBGB18

!     BAND 18:  4000-4650 cm-1 (low - H2O,CH4; high - CH4)
!-----------------------------------------------------------------------

USE PARKIND1  ,ONLY : JPIM , JPRB
USE ecradhook   ,ONLY : LHOOK, DR_HOOK, JPHOOK

USE YOESRTM  , ONLY : NGN
USE YOESRTWN , ONLY : NGC, NGS, RWGT
!USE YOESRTWN , ONLY : NGC, NGS, NGN, RWGT
USE YOESRTA18, ONLY : KA, KB, SELFREF, FORREF, SFLUXREF, &
                    & KAC, KBC, SELFREFC, FORREFC, SFLUXREFC

IMPLICIT NONE

! Local variables
INTEGER(KIND=JPIM) :: JN, JT, JP, IGC, IPR, IPRSM
REAL(KIND=JPRB)    :: ZSUMK, ZSUMF

REAL(KIND=JPHOOK) :: ZHOOK_HANDLE
!     ------------------------------------------------------------------
IF (LHOOK) CALL DR_HOOK('SRTM_CMBGB18',0,ZHOOK_HANDLE)

DO JN = 1,9
  DO JT = 1,5
    DO JP = 1,13
      IPRSM = 0
      DO IGC = 1,NGC(3)
        ZSUMK = 0.
        DO IPR = 1, NGN(NGS(2)+IGC)
          IPRSM = IPRSM + 1
          ZSUMK = ZSUMK + KA(JN,JT,JP,IPRSM)*RWGT(IPRSM+32)
        ENDDO
        KAC(JN,JT,JP,IGC) = ZSUMK
      ENDDO
    ENDDO
  ENDDO
ENDDO

DO JT = 1,5
  DO JP = 13,59
    IPRSM = 0
    DO IGC = 1,NGC(3)
      ZSUMK = 0.
      DO IPR = 1, NGN(NGS(2)+IGC)
        IPRSM = IPRSM + 1
        ZSUMK = ZSUMK + KB(JT,JP,IPRSM)*RWGT(IPRSM+32)
      ENDDO
      KBC(JT,JP,IGC) = ZSUMK
    ENDDO
  ENDDO
ENDDO

DO JT = 1,10
  IPRSM = 0
  DO IGC = 1,NGC(3)
    ZSUMK = 0.
    DO IPR = 1, NGN(NGS(2)+IGC)
      IPRSM = IPRSM + 1
      ZSUMK = ZSUMK + SELFREF(JT,IPRSM)*RWGT(IPRSM+32)
    ENDDO
    SELFREFC(JT,IGC) = ZSUMK
  ENDDO
ENDDO

DO JT = 1,3
  IPRSM = 0
  DO IGC = 1,NGC(3)
    ZSUMK = 0.
    DO IPR = 1, NGN(NGS(2)+IGC)
      IPRSM = IPRSM + 1
      ZSUMK = ZSUMK + FORREF(JT,IPRSM)*RWGT(IPRSM+32)
    ENDDO
    FORREFC(JT,IGC) = ZSUMK
  ENDDO
ENDDO

DO JP = 1,9
  IPRSM = 0
  DO IGC = 1,NGC(3)
    ZSUMF = 0.
    DO IPR = 1, NGN(NGS(2)+IGC)
      IPRSM = IPRSM + 1
      ZSUMF = ZSUMF + SFLUXREF(IPRSM,JP)
    ENDDO
    SFLUXREFC(IGC,JP) = ZSUMF
  ENDDO
ENDDO

!$ACC UPDATE DEVICE(KAC, KBC, SELFREFC, FORREFC, SFLUXREFC)

!     -----------------------------------------------------------------
IF (LHOOK) CALL DR_HOOK('SRTM_CMBGB18',1,ZHOOK_HANDLE)
END SUBROUTINE SRTM_CMBGB18

