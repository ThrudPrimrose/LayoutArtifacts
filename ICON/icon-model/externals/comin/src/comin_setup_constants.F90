!> @file comin_setup_constants.F90
!! @brief ComIn utilities, containing named constants for entry points and
!!        named constants for variable state (READ, WRITE, ...).
!
!  @authors 01/2023 :: ICON Community Interface  <comin@icon-model.org>
!
!  SPDX-License-Identifier: BSD-3-Clause
!
!  See LICENSES for license information.
!  Where software is supplied by third parties, it is indicated in the
!  headers of the routines.
!
MODULE comin_setup_constants
  USE ISO_C_BINDING,        ONLY : C_INT, C_CHAR, C_DOUBLE
  USE comin_c_utils,        ONLY: convert_f_string
  IMPLICIT NONE

  PRIVATE
  PUBLIC :: wp
  PUBLIC :: EP_SECONDARY_CONSTRUCTOR,     &
    &       EP_ATM_YAC_DEFCOMP_BEFORE,    &
    &       EP_ATM_YAC_DEFCOMP_AFTER,     &
    &       EP_ATM_YAC_SYNCDEF_BEFORE,    &
    &       EP_ATM_YAC_SYNCDEF_AFTER,     &
    &       EP_ATM_YAC_ENDDEF_BEFORE,     &
    &       EP_ATM_YAC_ENDDEF_AFTER,      &
    &       EP_ATM_INIT_FINALIZE,         &
    &       EP_ATM_TIMELOOP_BEFORE,       &
    &       EP_ATM_TIMELOOP_START,        &
    &       EP_ATM_TIMELOOP_END,          &
    &       EP_ATM_TIMELOOP_AFTER,        &
    &       EP_ATM_INTEGRATE_BEFORE,      &
    &       EP_ATM_INTEGRATE_START,       &
    &       EP_ATM_INTEGRATE_END,         &
    &       EP_ATM_INTEGRATE_AFTER,       &
    &       EP_ATM_WRITE_OUTPUT_BEFORE,   &
    &       EP_ATM_WRITE_OUTPUT_AFTER,    &
    &       EP_ATM_CHECKPOINT_BEFORE,     &
    &       EP_ATM_CHECKPOINT_AFTER,      &
    &       EP_ATM_ADVECTION_BEFORE,      &
    &       EP_ATM_ADVECTION_AFTER,       &
    &       EP_ATM_PHYSICS_BEFORE,        &
    &       EP_ATM_PHYSICS_AFTER,         &
    &       EP_ATM_NUDGING_BEFORE,        &
    &       EP_ATM_NUDGING_AFTER,         &
    &       EP_ATM_SURFACE_BEFORE,        &
    &       EP_ATM_SURFACE_AFTER,         &
    &       EP_ATM_TURBULENCE_BEFORE,     &
    &       EP_ATM_TURBULENCE_AFTER,      &
    &       EP_ATM_MICROPHYSICS_BEFORE,   &
    &       EP_ATM_MICROPHYSICS_AFTER,    &
    &       EP_ATM_CONVECTION_BEFORE,     &
    &       EP_ATM_CONVECTION_AFTER,      &
    &       EP_ATM_RADIATION_BEFORE,      &
    &       EP_ATM_RADIATION_AFTER,       &
    &       EP_ATM_RADHEAT_BEFORE,        &
    &       EP_ATM_RADHEAT_AFTER,         &
    &       EP_ATM_GWDRAG_BEFORE,         &
    &       EP_ATM_GWDRAG_AFTER,          &
    &       EP_FINISH,                    &
    &       EP_DESTRUCTOR
  PUBLIC :: FLAG_NONE, COMIN_FLAG_READ, COMIN_FLAG_WRITE, COMIN_FLAG_DEVICE
  PUBLIC :: COMIN_ZAXIS_NONE, COMIN_ZAXIS_2D, COMIN_ZAXIS_3D, COMIN_ZAXIS_3D_HALF, COMIN_ZAXIS_UNDEF
  PUBLIC :: DOMAIN_UNDEFINED, COMIN_DOMAIN_OUTSIDE_LOOP
  PUBLIC :: COMIN_HGRID_UNSTRUCTURED_CELL, COMIN_HGRID_UNSTRUCTURED_EDGE, COMIN_HGRID_UNSTRUCTURED_VERTEX
  PUBLIC :: EP_NAME

#include "comin_global.inc"

  !> List of entry points, named constants and accessor functions that
  !> are exposed to both, the host interface and the plugin interface.
  !!
  !! @defgroup common Common
  !! @{
  !! @}

  !> working precision
  !! @ingroup common
  INTEGER, PARAMETER   :: wp = C_DOUBLE

  !> id of current domain, two states possible if not in domain loop
  !! @ingroup common
  INTEGER, PARAMETER   :: DOMAIN_UNDEFINED    = -2

  !> id of current domain, two states possible if not in domain loop
  !! @ingroup common
  INTEGER, PARAMETER   :: COMIN_DOMAIN_OUTSIDE_LOOP = -1

  !> List of entry points
  !!
  !! @ingroup common
  !! Note: EP_DESTRUCTOR should always be the last entry
  ENUM, BIND(C)
    ENUMERATOR :: EP_SECONDARY_CONSTRUCTOR = 1, &
      &           EP_ATM_YAC_DEFCOMP_BEFORE,    &
      &           EP_ATM_YAC_DEFCOMP_AFTER,     &
      &           EP_ATM_YAC_SYNCDEF_BEFORE,    &
      &           EP_ATM_YAC_SYNCDEF_AFTER,     &
      &           EP_ATM_YAC_ENDDEF_BEFORE,     &
      &           EP_ATM_YAC_ENDDEF_AFTER,      &
      &           EP_ATM_INIT_FINALIZE,         &
      &           EP_ATM_TIMELOOP_BEFORE,       &
      &           EP_ATM_TIMELOOP_START,        &
      &           EP_ATM_TIMELOOP_END,          &
      &           EP_ATM_TIMELOOP_AFTER,        &
      &           EP_ATM_INTEGRATE_BEFORE,      &
      &           EP_ATM_INTEGRATE_START,       &
      &           EP_ATM_INTEGRATE_END,         &
      &           EP_ATM_INTEGRATE_AFTER,       &
      &           EP_ATM_WRITE_OUTPUT_BEFORE,   &
      &           EP_ATM_WRITE_OUTPUT_AFTER,    &
      &           EP_ATM_CHECKPOINT_BEFORE,     &
      &           EP_ATM_CHECKPOINT_AFTER,      &
      &           EP_ATM_ADVECTION_BEFORE,      &
      &           EP_ATM_ADVECTION_AFTER,       &
      &           EP_ATM_PHYSICS_BEFORE,        &
      &           EP_ATM_PHYSICS_AFTER,         &
      &           EP_ATM_NUDGING_BEFORE,        &
      &           EP_ATM_NUDGING_AFTER,         &
      &           EP_ATM_SURFACE_BEFORE,        &
      &           EP_ATM_SURFACE_AFTER,         &
      &           EP_ATM_TURBULENCE_BEFORE,     &
      &           EP_ATM_TURBULENCE_AFTER,      &
      &           EP_ATM_MICROPHYSICS_BEFORE,   &
      &           EP_ATM_MICROPHYSICS_AFTER,    &
      &           EP_ATM_CONVECTION_BEFORE,     &
      &           EP_ATM_CONVECTION_AFTER,      &
      &           EP_ATM_RADIATION_BEFORE,      &
      &           EP_ATM_RADIATION_AFTER,       &
      &           EP_ATM_RADHEAT_BEFORE,        &
      &           EP_ATM_RADHEAT_AFTER,         &
      &           EP_ATM_GWDRAG_BEFORE,         &
      &           EP_ATM_GWDRAG_AFTER,          &
      &           EP_FINISH,                    &
      &           EP_DESTRUCTOR
  END ENUM

  !> Entry point names (character strings)
   !! @ingroup common
  CHARACTER(LEN=MAX_LEN_EP_NAME), PARAMETER :: EP_NAME(EP_DESTRUCTOR) = [ &
    &  "EP_SECONDARY_CONSTRUCTOR    ",  &
    &  "EP_ATM_YAC_DEFCOMP_BEFORE   ",  &
    &  "EP_ATM_YAC_DEFCOMP_AFTER    ",  &
    &  "EP_ATM_YAC_SYNCDEF_BEFORE   ",  &
    &  "EP_ATM_YAC_SYNCDEF_AFTER    ",  &
    &  "EP_ATM_YAC_ENDDEF_BEFORE    ",  &
    &  "EP_ATM_YAC_ENDDEF_AFTER     ",  &
    &  "EP_ATM_INIT_FINALIZE        ",  &
    &  "EP_ATM_TIMELOOP_BEFORE      ",  &
    &  "EP_ATM_TIMELOOP_START       ",  &
    &  "EP_ATM_TIMELOOP_END         ",  &
    &  "EP_ATM_TIMELOOP_AFTER       ",  &
    &  "EP_ATM_INTEGRATE_BEFORE     ",  &
    &  "EP_ATM_INTEGRATE_START      ",  &
    &  "EP_ATM_INTEGRATE_END        ",  &
    &  "EP_ATM_INTEGRATE_AFTER      ",  &
    &  "EP_ATM_WRITE_OUTPUT_BEFORE  ",  &
    &  "EP_ATM_WRITE_OUTPUT_AFTER   ",  &
    &  "EP_ATM_CHECKPOINT_BEFORE    ",  &
    &  "EP_ATM_CHECKPOINT_AFTER     ",  &
    &  "EP_ATM_ADVECTION_BEFORE     ",  &
    &  "EP_ATM_ADVECTION_AFTER      ",  &
    &  "EP_ATM_PHYSICS_BEFORE       ",  &
    &  "EP_ATM_PHYSICS_AFTER        ",  &
    &  "EP_ATM_NUDGING_BEFORE       ",  &
    &  "EP_ATM_NUDGING_AFTER        ",  &
    &  "EP_ATM_SURFACE_BEFORE       ",  &
    &  "EP_ATM_SURFACE_AFTER        ",  &
    &  "EP_ATM_TURBULENCE_BEFORE    ",  &
    &  "EP_ATM_TURBULENCE_AFTER     ",  &
    &  "EP_ATM_MICROPHYSICS_BEFORE  ",  &
    &  "EP_ATM_MICROPHYSICS_AFTER   ",  &
    &  "EP_ATM_CONVECTION_BEFORE    ",  &
    &  "EP_ATM_CONVECTION_AFTER     ",  &
    &  "EP_ATM_RADIATION_BEFORE     ",  &
    &  "EP_ATM_RADIATION_AFTER      ",  &
    &  "EP_ATM_RADHEAT_BEFORE       ",  &
    &  "EP_ATM_RADHEAT_AFTER        ",  &
    &  "EP_ATM_GWDRAG_BEFORE        ",  &
    &  "EP_ATM_GWDRAG_AFTER         ",  &
    &  "EP_FINISH                   ",  &
    &  "EP_DESTRUCTOR               " ]

  !> Variable access flags.
  !! @ingroup plugin_interface
  ENUM, BIND(C)
    ENUMERATOR :: FLAG_NONE         = 0,          &
      &         COMIN_FLAG_READ         = IBSET(0,1), &
      &         COMIN_FLAG_WRITE        = IBSET(0,2), &
      &         COMIN_FLAG_DEVICE       = IBSET(0,4)
    ! note: the COMIN_FLAG_SYNCHRONIZED is unavailable (not yet implemented):
    !   &         COMIN_FLAG_SYNCHRONIZED = IBSET(0,3)
  END ENUM

  !> integer constant, which gives an interpretation of the horizontal
  !> grid location (cell, edge, vertex).
  !! @ingroup plugin_interface
  ENUM, BIND(C)
    ENUMERATOR :: COMIN_HGRID_UNSTRUCTURED_CELL   = 1,  &
     &            COMIN_HGRID_UNSTRUCTURED_EDGE   = 2,  &
     &            COMIN_HGRID_UNSTRUCTURED_VERTEX = 3
  END ENUM

  !> Integer constants, giving an interpretation of the vertical axis
  !> (2D, atmospheric levels, ...)
  !! @ingroup plugin_interface
  ENUM, BIND(C)
    ENUMERATOR :: COMIN_ZAXIS_UNDEF         = -1,   &
      &           COMIN_ZAXIS_NONE          =  0,   &
      &           COMIN_ZAXIS_2D            =  1,   &
      &           COMIN_ZAXIS_3D            =  2,   &
      &           COMIN_ZAXIS_3D_HALF       =  3
  END ENUM

END MODULE comin_setup_constants
