! This file has been modified for the use in ICON

! radiation_cloudless_sw.F90 - Shortwave homogeneous cloudless solver
!
! (C) Copyright 2019- ECMWF.
!
! This software is licensed under the terms of the Apache Licence Version 2.0
! which can be obtained at http://www.apache.org/licenses/LICENSE-2.0.
!
! In applying this licence, ECMWF does not waive the privileges and immunities
! granted to it by virtue of its status as an intergovernmental organisation
! nor does it submit to any jurisdiction.
!
! Author:  Robin Hogan
! Email:   r.j.hogan@ecmwf.int
!

module radiation_cloudless_sw

public :: solver_cloudless_sw

contains

  ! Provides elemental function "delta_eddington"
#include "radiation_delta_eddington.h"

  !---------------------------------------------------------------------
  ! Shortwave homogeneous solver containing no clouds
  subroutine solver_cloudless_sw(nlev,istartcol,iendcol, &
       &  config, single_level, & 
       &  od, ssa, g, albedo_direct, albedo_diffuse, incoming_sw, &
       &  flux)

    use parkind1, only           : jprb
    use ecradhook,  only           : lhook, dr_hook, jphook

    use radiation_config, only         : config_type
    use radiation_single_level, only   : single_level_type
    use radiation_flux, only           : flux_type, indexed_sum_profile, &
         &                               add_indexed_sum_profile
    use radiation_two_stream, only     : calc_two_stream_gammas_sw, &
         &                       calc_reflectance_transmittance_sw
    use radiation_constants, only      : Pi, GasConstantDryAir, &
         &                               AccelDueToGravity
    use radiation_adding_ica_sw, only  : adding_ica_sw

    implicit none

    ! Inputs
    integer, intent(in) :: nlev               ! number of model levels
    integer, intent(in) :: istartcol, iendcol ! range of columns to process
    type(config_type),        intent(in) :: config
    type(single_level_type),  intent(in) :: single_level

    ! Gas and aerosol optical depth, single-scattering albedo and
    ! asymmetry factor at each shortwave g-point
    real(jprb), intent(in), dimension(config%n_g_sw, nlev, istartcol:iendcol) :: &
         &  od, ssa, g

    ! Direct and diffuse surface albedos, and the incoming shortwave
    ! flux into a plane perpendicular to the incoming radiation at
    ! top-of-atmosphere in each of the shortwave g points
    real(jprb), intent(in), dimension(config%n_g_sw,istartcol:iendcol) :: &
         &  albedo_direct, albedo_diffuse, incoming_sw

    ! Output
    type(flux_type), intent(inout):: flux

    ! Local variables

    ! Cosine of solar zenith angle
    real(jprb)                                 :: cos_sza

    ! Diffuse reflectance and transmittance for each layer
    real(jprb), dimension(config%n_g_sw, nlev) :: reflectance, transmittance

    ! Fraction of direct beam scattered by a layer into the upwelling
    ! or downwelling diffuse streams
    real(jprb), dimension(config%n_g_sw, nlev) :: ref_dir, trans_dir_diff

    ! Transmittance for the direct beam in clear and all skies
    real(jprb), dimension(config%n_g_sw, nlev) :: trans_dir_dir

    ! Fluxes per g point
    real(jprb), dimension(config%n_g_sw, nlev+1) :: flux_up, flux_dn_diffuse, flux_dn_direct

    ! Combined optical depth, single scattering albedo and asymmetry
    ! factor
    real(jprb), dimension(config%n_g_sw) :: od_total, ssa_total, g_total

    ! Two-stream coefficients
    real(jprb), dimension(config%n_g_sw) :: gamma1, gamma2, gamma3

    ! Temporary working array
    real(jprb), dimension(config%n_g_sw,nlev+1) :: tmp_work_albedo, tmp_work_source
    real(jprb), dimension(config%n_g_sw,nlev) :: tmp_work_inv_denominator

    ! Number of g points
    integer :: ng

    ! Loop indices for level and column
    integer :: jlev, jcol

    real(jphook) :: hook_handle

    if (lhook) call dr_hook('radiation_cloudless_sw:solver_cloudless_sw',0,hook_handle)

    ng = config%n_g_sw

    ! Loop through columns
    do jcol = istartcol,iendcol
      ! Only perform calculation if sun above the horizon
      if (single_level%cos_sza(jcol) > 0.0_jprb) then

        cos_sza = single_level%cos_sza(jcol)
        
        ! The following is the same as the clear-sky part of
        ! solver_homogeneous_sw
        if (.not. config%do_sw_delta_scaling_with_gases) then
          ! Delta-Eddington scaling has already been performed to the
          ! aerosol part of od, ssa and g
          do jlev = 1,nlev
            call calc_two_stream_gammas_sw(ng, cos_sza, &
                 &  ssa(:,jlev,jcol), g(:,jlev,jcol), &
                 &  gamma1, gamma2, gamma3)
            call calc_reflectance_transmittance_sw(ng, &
                 &  cos_sza, &
                 &  od(:,jlev,jcol), ssa(:,jlev,jcol), &
                 &  gamma1, gamma2, gamma3, &
                 &  reflectance(:,jlev), transmittance(:,jlev), &
                 &  ref_dir(:,jlev), trans_dir_diff(:,jlev), &
                 &  trans_dir_dir(:,jlev) )
          end do
        else
          ! Apply delta-Eddington scaling to the aerosol-gas mixture
          do jlev = 1,nlev
            od_total  =  od(:,jlev,jcol)
            ssa_total = ssa(:,jlev,jcol)
            g_total   =   g(:,jlev,jcol)
            call delta_eddington(od_total, ssa_total, g_total)
            call calc_two_stream_gammas_sw(ng, &
                 &  cos_sza, ssa_total, g_total, &
                 &  gamma1, gamma2, gamma3)
            call calc_reflectance_transmittance_sw(ng, &
                 &  cos_sza, od_total, ssa_total, &
                 &  gamma1, gamma2, gamma3, &
                 &  reflectance(:,jlev), transmittance(:,jlev), &
                 &  ref_dir(:,jlev), trans_dir_diff(:,jlev), &
                 &  trans_dir_dir(:,jlev) )
          end do
        end if
          
        ! Use adding method to compute fluxes
        call adding_ica_sw(ng, nlev, incoming_sw(:,jcol), &
             &  albedo_diffuse(:,jcol), albedo_direct(:,jcol), &
             &  cos_sza, reflectance, transmittance, ref_dir, trans_dir_diff, &
             &  trans_dir_dir, flux_up, flux_dn_diffuse, flux_dn_direct, &
             &  albedo=tmp_work_albedo, &
             &  source=tmp_work_source, &
             &  inv_denominator=tmp_work_inv_denominator)
        
        ! Sum over g-points to compute and save clear-sky broadband
        ! fluxes
        flux%sw_up(jcol,:) = sum(flux_up,1)
        if (allocated(flux%sw_dn_direct)) then
          flux%sw_dn_direct(jcol,:) = sum(flux_dn_direct,1)
          flux%sw_dn(jcol,:) = sum(flux_dn_diffuse,1) &
               &  + flux%sw_dn_direct(jcol,:)
        else
          flux%sw_dn(jcol,:) = sum(flux_dn_diffuse,1) + sum(flux_dn_direct,1)
        end if
        ! Store spectral downwelling fluxes at surface
        flux%sw_dn_diffuse_surf_g(:,jcol) = flux_dn_diffuse(:,nlev+1)
        flux%sw_dn_direct_surf_g(:,jcol)  = flux_dn_direct(:,nlev+1)

        ! Save the spectral fluxes if required
        if (config%do_save_spectral_flux) then
          call indexed_sum_profile(flux_up, config%i_spec_from_reordered_g_sw, &
               &                   flux%sw_up_band(:,jcol,:))
          call indexed_sum_profile(flux_dn_direct, config%i_spec_from_reordered_g_sw, &
               &                   flux%sw_dn_band(:,jcol,:))
          if (allocated(flux%sw_dn_direct_band)) then
            flux%sw_dn_direct_band(:,jcol,:) &
                 &  = flux%sw_dn_band(:,jcol,:)
          end if
          call add_indexed_sum_profile(flux_dn_diffuse, &
               &                       config%i_spec_from_reordered_g_sw, &
               &                       flux%sw_dn_band(:,jcol,:))
        end if

        if (config%do_clear) then
          ! Clear-sky calculations are equal to all-sky for this
          ! solver: copy fluxes over
          flux%sw_up_clear(jcol,:) = flux%sw_up(jcol,:)
          flux%sw_dn_clear(jcol,:) = flux%sw_dn(jcol,:)
          if (allocated(flux%sw_dn_direct_clear)) then
            flux%sw_dn_direct_clear(jcol,:) = flux%sw_dn_direct(jcol,:)
          end if
          flux%sw_dn_diffuse_surf_clear_g(:,jcol) = flux%sw_dn_diffuse_surf_g(:,jcol)
          flux%sw_dn_direct_surf_clear_g(:,jcol)  = flux%sw_dn_direct_surf_g(:,jcol)

          if (config%do_save_spectral_flux) then
            flux%sw_up_clear_band(:,jcol,:) = flux%sw_up_band(:,jcol,:)
            flux%sw_dn_clear_band(:,jcol,:) = flux%sw_dn_band(:,jcol,:)
            if (allocated(flux%sw_dn_direct_clear_band)) then
              flux%sw_dn_direct_clear_band(:,jcol,:) = flux%sw_dn_direct_band(:,jcol,:)
            end if
          end if

        end if ! do_clear

      else
        ! Set fluxes to zero if sun is below the horizon
        flux%sw_up(jcol,:) = 0.0_jprb
        flux%sw_dn(jcol,:) = 0.0_jprb
        if (allocated(flux%sw_dn_direct)) then
          flux%sw_dn_direct(jcol,:) = 0.0_jprb
        end if
        flux%sw_dn_diffuse_surf_g(:,jcol) = 0.0_jprb
        flux%sw_dn_direct_surf_g(:,jcol)  = 0.0_jprb

        if (config%do_clear) then
          flux%sw_up_clear(jcol,:) = 0.0_jprb
          flux%sw_dn_clear(jcol,:) = 0.0_jprb
          if (allocated(flux%sw_dn_direct_clear)) then
            flux%sw_dn_direct_clear(jcol,:) = 0.0_jprb
          end if
          flux%sw_dn_diffuse_surf_clear_g(:,jcol) = 0.0_jprb
          flux%sw_dn_direct_surf_clear_g(:,jcol)  = 0.0_jprb
        end if

        if (config%do_save_spectral_flux) then
          flux%sw_dn_band(:,jcol,:) = 0.0_jprb
          flux%sw_up_band(:,jcol,:) = 0.0_jprb
          if (allocated(flux%sw_dn_direct_band)) then
            flux%sw_dn_direct_band(:,jcol,:) = 0.0_jprb
          end if
          if (config%do_clear) then
            flux%sw_dn_clear_band(:,jcol,:) = 0.0_jprb
            flux%sw_up_clear_band(:,jcol,:) = 0.0_jprb
            if (allocated(flux%sw_dn_direct_clear_band)) then
              flux%sw_dn_direct_clear_band(:,jcol,:) = 0.0_jprb
            end if
          end if
        end if

      end if ! sun above horizon
    end do

    if (lhook) call dr_hook('radiation_cloudless_sw:solver_cloudless_sw',1,hook_handle)

  end subroutine solver_cloudless_sw

end module radiation_cloudless_sw
