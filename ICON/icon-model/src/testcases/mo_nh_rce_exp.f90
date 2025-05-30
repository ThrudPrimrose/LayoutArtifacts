! ICON
!
! ---------------------------------------------------------------
! Copyright (C) 2004-2024, DWD, MPI-M, DKRZ, KIT, ETH, MeteoSwiss
! Contact information: icon-model.org
!
! See AUTHORS.TXT for a list of authors
! See LICENSES/ for license information
! SPDX-License-Identifier: BSD-3-Clause
! ---------------------------------------------------------------

! Subroutine to initialize a Radiative Convective Equilibrium Exp

MODULE mo_nh_rce_exp

  USE mo_kind,                ONLY: wp
  USE mo_model_domain,        ONLY: t_patch
  USE mo_physical_constants,  ONLY: rd, grav, p0ref,rd_o_cpd, o_m_rdv
  USE mo_nonhydro_types,      ONLY: t_nh_prog, t_nh_diag, t_nh_metrics, t_nh_ref
  USE mo_parallel_config,     ONLY: nproma
  USE mo_nh_testcases_nml,    ONLY: tpe_psfc, tpe_temp, t0, z0, gamma0,        &
  &                                 gamma1,                             &
  &                                 th_perturb, relhum,               &
  &                                 rce_tprescr_noise, th_perturb
  USE mo_run_config,          ONLY: iqv
  USE mo_satad,               ONLY: spec_humi, sat_pres_water
  USE mo_hydro_adjust,        ONLY: hydro_adjust_iterative
  USE mo_random_util,         ONLY: add_random_noise_global

  IMPLICIT NONE

  PRIVATE

  PUBLIC :: init_nh_state_rce_glb, init_nh_state_rce_tprescr_glb

  !DEFINED PARAMETERS (Stevens 2007 JAS):
!! for the initial state, it is unimportant what exact temperature is used
!! this temperature should be consistent with the temperature of the ocean in the RCE case
!! it can be set via the nh_testcase_nml namelist (see the use statement above
!!$  REAL(wp), PARAMETER :: zp0     = 100000._wp !< surface pressure
!!$  REAL(wp), PARAMETER :: zh0     = 0._wp      !< height (m) above which temperature increases
!!$  REAL(wp), PARAMETER :: dtdz    = 0.006_wp   !< lapse rate
!!$  REAL(wp), PARAMETER :: zt0     = 302.15_wp  ! Surface temperature (K)
!  REAL(wp), PARAMETER :: lambda  = 1500._wp   !moist height from Stevens(2007)

!--------------------------------------------------------------------
   CONTAINS
!-------------------------------------------------------------------------
  !>
  !! Initialization of prognostic state vector for the nh RCE test case with a constant T profile
  !!  
  !!
  SUBROUTINE init_nh_state_rce_glb( ptr_patch, ptr_nh_prog,  ptr_nh_ref, ptr_nh_diag,  &
  &                                 ptr_metrics)

    ! INPUT PARAMETERS:
    TYPE(t_patch),TARGET,  INTENT(IN)   :: &  !< patch on which computation is performed
      &  ptr_patch
    TYPE(t_nh_prog),       INTENT(INOUT):: &  !< prognostic state vector
      &  ptr_nh_prog
    TYPE(t_nh_diag),       INTENT(INOUT):: &  !< diagnostic state vector
      &  ptr_nh_diag
    TYPE(t_nh_metrics),    INTENT(IN)   :: &
      &  ptr_metrics                          !< NH metrics state
    TYPE(t_nh_ref),        INTENT(INOUT):: &  !< reference state vector
      &  ptr_nh_ref

    INTEGER  :: jb,jk  ! loop indices
    INTEGER  :: nblks_c,npromz_c
    INTEGER  :: nlen,nlev

    ! values for the blocking
    nblks_c  = ptr_patch%nblks_c
    npromz_c = ptr_patch%npromz_c

    ! number of vertical levels
    nlev   = ptr_patch%nlev
  
    ! init surface pressure
    ptr_nh_diag%pres_sfc(:,:) = tpe_psfc
  
    ! Tracers: all zero by default
    ptr_nh_prog%tracer(:,:,:,:) = 0._wp

    DO jb = 1, nblks_c

      IF (jb /= nblks_c) THEN
         nlen = nproma
      ELSE
         nlen = npromz_c
      END IF

      DO jk = 1, nlev
         ! start from a dry isothermal atmosphere with temperature tpe_temp
         ! set pressure and Exner function first
        ptr_nh_diag%pres(1:nlen, jk, jb)    = tpe_psfc * EXP(-grav/rd/tpe_temp*ptr_metrics%z_mc(1:nlen, jk, jb))
        ptr_nh_prog%rho(1:nlen, jk, jb)     = ptr_nh_diag%pres(1:nlen, jk, jb)/rd/tpe_temp
        ptr_nh_prog%exner(1:nlen, jk, jb)   = (ptr_nh_diag%pres(1:nlen, jk, jb)/p0ref)**rd_o_cpd
        ptr_nh_prog%theta_v(1:nlen, jk, jb) = tpe_temp/ptr_nh_prog%exner(1:nlen, jk, jb)
      END DO !jk
        
    END DO ! jb       

  !meridional and zonal wind
  ptr_nh_prog%vn = 0._wp
  ptr_nh_ref%vn_ref = ptr_nh_prog%vn

  !vertical wind
  ptr_nh_prog%w = 0._wp
  ptr_nh_ref%w_ref = ptr_nh_prog%w

  END SUBROUTINE init_nh_state_rce_glb

  SUBROUTINE init_nh_state_rce_tprescr_glb( ptr_patch, ptr_nh_prog,   &
  &                                         ptr_nh_ref, ptr_nh_diag,  &
  &                                         ptr_metrics)

    ! INPUT PARAMETERS:
    TYPE(t_patch),TARGET,  INTENT(IN)   :: &  !< patch on which computation is performed
      &  ptr_patch
    TYPE(t_nh_prog),       INTENT(INOUT):: &  !< prognostic state vector
      &  ptr_nh_prog
    TYPE(t_nh_diag),       INTENT(INOUT):: &  !< diagnostic state vector
      &  ptr_nh_diag
    TYPE(t_nh_metrics),    INTENT(IN)   :: &  !< NH metrics state
      &  ptr_metrics                          
    TYPE(t_nh_ref),        INTENT(INOUT):: &  !< reference state vector
      &  ptr_nh_ref

    REAL(wp), ALLOCATABLE :: temp(:,:,:), rh(:,:,:)
    REAL(WP) :: pres(nproma), tt(nproma)
    INTEGER  :: jb,jk,jl  ! loop indices
    INTEGER  :: nblks_c,npromz_c
    INTEGER  :: nlen,nlev
    REAL(wp) :: qv, sat_pres, wat_pres, tv, z, dz

    ! values for the blocking
    nblks_c  = ptr_patch%nblks_c
    npromz_c = ptr_patch%npromz_c

    ! number of vertical levels
    nlev   = ptr_patch%nlev

    ALLOCATE(temp(nproma,nlev,nblks_c))
    ALLOCATE(rh(nproma,nlev,nblks_c))
    
    ! init surface pressure
    ptr_nh_diag%pres_sfc(:,:) = tpe_psfc
  
    ! Tracers: all zero by default
    ptr_nh_prog%tracer(:,:,:,:) = 0._wp

    DO jb = 1, nblks_c
      IF (jb /= nblks_c) THEN
         nlen = nproma
      ELSE
         nlen = npromz_c
      END IF

      pres(1:nlen) = tpe_psfc   ! set pres to surface pressure in a first step
      tt(1:nlen) = t0           ! set tt to atmospheric surface temperature
                                ! (however, this temperature may be different
                                ! of the temperature of the water surface)
      DO jk = nlev, 1, -1
         ! Calculation of temperature profile, pressure, Exner pressure potential virtual temperature
         ! We perform a simple integration of the hydrostatic equation from bottom to top of atm.
        DO jl = 1, nlen
          z = ptr_metrics%z_mc(jl, jk, jb)
          IF ( jk == nlev ) THEN
            dz = z
          ELSE
            dz = z-ptr_metrics%z_mc(jl, jk+1, jb)
          END IF
          ! Temperature profile from bottom to z0 with linear gradient gamma0,
          ! above z0 linear gradient gamma1
          ! Let temperature not fall under 150 K.
          IF ( z <= z0 ) THEN 
            temp(jl,jk,jb) = t0 + gamma0 * z
          ELSE
            temp(jl,jk,jb) = t0 + gamma0 * z0 + gamma1 * (z-z0)
          END IF
          temp(jl,jk,jb)=max(temp(jl,jk,jb),150._wp)
          ! For the integration of the hydrostatic equation from one layer midpoint to the next above,
          ! use mean temperature between the two layers.
          tt(jl)    = 0.5_wp * (tt(jl) + temp(jl,jk,jb))
          pres(jl)  = pres(jl) * EXP(-grav/rd/tt(jl) * dz)
          tt(jl) = temp(jl,jk,jb) ! set temperature tt at temperature of actual layer
          ! The saturation pressure of water has to be calculated
          ! with the temperature of the actual grid cell
          sat_pres                           = sat_pres_water(tt(jl))
          wat_pres                           = 0.01_wp * relhum * sat_pres
          tv                                 = tt(jl) / (1._wp - (wat_pres / pres(jl)) * o_m_rdv)
          qv                                 = spec_humi(wat_pres, pres(jl))
          ptr_nh_prog%exner(jl, jk, jb)      = (pres(jl) / p0ref)**rd_o_cpd
          ptr_nh_diag%pres(jl, jk, jb)       = pres(jl)
          ptr_nh_prog%rho(jl, jk, jb)        = pres(jl) / rd / tv
          ptr_nh_prog%theta_v(jl, jk, jb)    = tv / ptr_nh_prog%exner(jl, jk, jb)
          ptr_nh_prog%tracer(jl, jk, jb, iqv)= qv
        END DO !jl

      END DO !jk
        
    END DO ! jb

    ! Adjust preliminary profiles to numerics of ICON dynamical core
    ! Relative humidity is constant throughout domain and levels, but needs to be stored in a 3d var.
    rh(:,:,:)=0.01_wp*relhum
    CALL hydro_adjust_iterative(                                                                  &
         & ptr_patch,                             ptr_metrics,                                    &
         & temp,                                  rh, ptr_nh_prog%exner,                          &
         & ptr_nh_prog%theta_v,                   ptr_nh_prog%rho,                                &
         & ptr_nh_prog%tracer(:,:,:,iqv),         luse_exner_fg=.TRUE.,                           &
         & opt_exner_lbc=ptr_nh_prog%exner(:,nlev,:)                                              )
    ! Add random noise. There would also be the method to add the noise to the surface pressure
    ! before the hydro_adjust_iterative. However, it is less intuitive due to the Exner function
    ! and does not lead to better results.
    IF (RCE_Tprescr_noise) THEN
      CALL add_random_noise_global(in_subset=ptr_patch%cells%all,   &
           & in_var=ptr_nh_prog%theta_v(:,:,:),                     &
           & start_level=nlev-3,                                    &
           & end_level=nlev,                                        &
           & noise_scale=th_perturb )   
    END IF
    
  !meridional and zonal wind
  ptr_nh_prog%vn = 0._wp
  ptr_nh_ref%vn_ref = ptr_nh_prog%vn

  !vertical wind
  ptr_nh_prog%w = 0._wp
  ptr_nh_ref%w_ref = ptr_nh_prog%w

END SUBROUTINE init_nh_state_rce_tprescr_glb
  
  FUNCTION gaussian(mu, sigma, delta, x)
    !> calculate Gaussian profile
    !> param[in] mu
    !> param[in] sigma
    !> param[in] delta
    !> param[in] x
    !
    REAL(wp), INTENT(in) :: mu    !< expectation of the Gaussian
    REAL(wp), INTENT(in) :: sigma !< std-dev. of Gaussian
    REAL(wp), INTENT(in) :: delta !< max. diviation from 0
    REAL(wp), INTENT(in) :: x     !< x value
    REAL(wp) :: gaussian, xx

    xx = ((x - mu) / sigma)
    gaussian = EXP(-.5_wp * xx * xx) * delta
  END FUNCTION gaussian

END MODULE mo_nh_rce_exp
