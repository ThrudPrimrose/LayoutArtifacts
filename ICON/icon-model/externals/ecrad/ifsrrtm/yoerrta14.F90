! This file has been modified for the use in ICON

MODULE YOERRTA14

USE PARKIND1  ,ONLY : JPIM     ,JPRB

IMPLICIT NONE

PUBLIC

SAVE

!     -----------------------------------------------------------------
!*    ** *YOERRTA14* - RRTM COEFFICIENTS FOR INTERVAL 14
!     BAND 14:  2250-2380 cm-1 (low - CO2; high - CO2)
!     ABozzo 201306 updated to rrtmg v4.85
!     -----------------------------------------------------------------

INTEGER(KIND=JPIM), PARAMETER :: NG14 = 2

REAL(KIND=JPRB) , DIMENSION(NG14) :: FRACREFA
REAL(KIND=JPRB) , DIMENSION(NG14) :: FRACREFB

REAL(KIND=JPRB) :: KA(5,13,NG14)   ,ABSA(65,NG14)
REAL(KIND=JPRB) :: KB(5,13:59,NG14),ABSB(235,NG14)
REAL(KIND=JPRB) :: SELFREF(10,NG14)
REAL(KIND=JPRB) :: FORREF(4,NG14)

EQUIVALENCE (KA(1,1,1),ABSA(1,1)), (KB(1,13,1),ABSB(1,1))

!$ACC DECLARE CREATE(FRACREFA, FRACREFB, KA, ABSA, KB, ABSB, SELFREF, FORREF)

!     -----------------------------------------------------------------
!        * E.C.M.W.F. PHYSICS PACKAGE *

!     J.-J. MORCRETTE       E.C.M.W.F.      98/01/15

!  NAME     TYPE     PURPOSE
!  ----   : ----   : ---------------------------------------------------
! ABSA    : REAL     absorption coefficient of major absorber for M reference tropospheric 
!                    pressures and N reference tropospheric temperatures 
! ABSB    : REAL     absorption coefficient of secondary absorber for M reference stratospheric
!                    pressures and N reference stratospheric temperatures 
! FRACREFA: REAL     distance from r and T reference tabulated points (troposphere)
! FRACREFB: REAL     distance from r and T reference tabulated points (stratosphere)
! KA      : REAL     absorption coefficient of major absorber (equiv. to ABSA)   
! KB      : REAL     absorption coefficient of secondary absorber (equiv. to ABSB)   
! SELFREF : REAL     self broadening coefficient for water vapour
!     -----------------------------------------------------------------
END MODULE YOERRTA14

