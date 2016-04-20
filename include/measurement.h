#ifndef MEASUREMENT_H
#define MEASUREMENT_H

#include "greens_func.h"


//________________________________________________________________________________________________________________________
///
/// \brief Equal time measurement data structure
///
typedef struct
{
	double *density_u;			//!< spin-up density, per orbital
	double *density_d;			//!< spin-down density, per orbital
	double *doubleocc;			//!< double occupancy, per orbital

	double *grfun_u;			//!< green's function for up spins:      <c_{i,up} c^{dagger}_{j,up}>
	double *grfun_d;			//!< green's function for down spins:    <c_{i,dn} c^{dagger}_{j,dn}>

	double *uu_corr;			//!< up-up density correlations:         <n_{i,up} n_{j,up}>
	double *dd_corr;			//!< down-down density correlations:     <n_{i,dn} n_{j,dn}>
	double *ud_corr;			//!< up-down density cross correlations: <n_{i,up} n_{j,dn} + n_{i,dn} n_{j,up}>
	double *ff_corr;			//!< probably doesn't correspond to any physical quantity

	double *zz_corr;			//!< z-z spin correlations: <(n_{i,up} - n_{i,dn})(n_{j,up} - n_{j,dn})>
	double *xx_corr;			//!< x-x spin correlations: <(x_{i,+1} + x_{i,-1})(x_{j,+1} + x_{j,-1})> with x_{i,+1} = c^{dagger}_{i,dn} c_{i,up} and x_{i,-1} = c^{dagger}_{i,up} c_{i,dn}

	double *sc_c_sw;			//!< superconducting susceptibility for s-wave pairing
	double *sc_c_dw;			//!< superconducting susceptibility for d-wave pairing
	double *sc_c_sx;			//!< superconducting susceptibility for extended s-wave pairing

	int *latt_sum_map;			//!< lattice site index of coordinate sum of two lattice sites; matrix of size Ncell x Ncell

	int *latt_xp1_map;			//!< index of right  neighbor lattice site (x+1,y); array of length Ncell
	int *latt_xm1_map;			//!< index of left   neighbor lattice site (x-1,y); array of length Ncell
	int *latt_yp1_map;			//!< index of top    neighbor lattice site (x,y+1); array of length Ncell
	int *latt_ym1_map;			//!< index of bottom neighbor lattice site (x,y-1); array of length Ncell

	int Norb;					//!< number of orbitals per unit cell
	int Ncell;					//!< total number of unit cells

	double sign;				//!< accumulated Green's function signs (+-1)

	int nsampl;					//!< number of accumulated samples
}
measurement_data_t;


void AllocateMeasurementData(const int Norb, const int Nx, const int Ny, const int pbc_shift, measurement_data_t *restrict meas_data);

void DeleteMeasurementData(measurement_data_t *restrict meas_data);


void AccumulateMeasurement(const greens_func_t *restrict Gu, const greens_func_t *restrict Gd, measurement_data_t *restrict meas_data);

void NormalizeMeasurementData(measurement_data_t *meas_data);


void PrintMeasurementDataSummary(const measurement_data_t *meas_data);


void LoadMeasurementData(const char *fnbase, measurement_data_t *meas_data);

void SaveMeasurementData(const char *fnbase, const measurement_data_t *meas_data);


//________________________________________________________________________________________________________________________
///
/// \brief Unequal time measurement data structure
///
typedef struct
{
	double *Gtau0_u;			//!< concatenated unequal time spin-up   Green's functions G_u(tau,   0) with tau = 0, 1, ..., L-1; array of size L*N x N
	double *G0tau_u;			//!< concatenated unequal time spin-up   Green's functions G_u(0,   tau) with tau = 0, 1, ..., L-1; array of size N x L*N
	double *Geqlt_u;			//!< concatenated   equal time spin-up   Green's functions G_u(tau, tau) with tau = 0, 1, ..., L-1; array of size N x L*N
	double *Gtau0_d;			//!< concatenated unequal time spin-down Green's functions G_d(tau,   0) with tau = 0, 1, ..., L-1; array of size L*N x N
	double *G0tau_d;			//!< concatenated unequal time spin-down Green's functions G_d(0,   tau) with tau = 0, 1, ..., L-1; array of size N x L*N
	double *Geqlt_d;			//!< concatenated   equal time spin-down Green's functions G_d(tau, tau) with tau = 0, 1, ..., L-1; array of size N x L*N

	double *nn_corr;			//!< density correlations;  matrix of size Ncell x Norb x Norb x L
	double *zz_corr;			//!< z-z spin correlations; matrix of size Ncell x Norb x Norb x L
	double *xx_corr;			//!< x-x spin correlations; matrix of size Ncell x Norb x Norb x L

	double *sc_c_sw;			//!< superconducting susceptibility for s-wave pairing
	double *sc_c_dw;			//!< superconducting susceptibility for d-wave pairing
	double *sc_c_sx;			//!< superconducting susceptibility for extended s-wave pairing

	double *ram_b1g;			//!< Raman B1g correlation function

	double *Hu;					//!< temporary matrix of size L*N x L*N for spin-up
	double *Hd;					//!< temporary matrix of size L*N x L*N for spin-down

	int *latt_sum_map;			//!< lattice site index of coordinate sum of two lattice sites; matrix of size Ncell x Ncell

	int *latt_xp1_map;			//!< index of right  neighbor lattice site (x+1,y); array of length Ncell
	int *latt_xm1_map;			//!< index of left   neighbor lattice site (x-1,y); array of length Ncell
	int *latt_yp1_map;			//!< index of top    neighbor lattice site (x,y+1); array of length Ncell
	int *latt_ym1_map;			//!< index of bottom neighbor lattice site (x,y-1); array of length Ncell

	int Norb;					//!< number of orbitals per unit cell
	int Ncell;					//!< total number of unit cells
	int L;						//!< total number of time steps

	double sign;				//!< accumulated (equal time) Green's function signs (+-1)

	int nsampl;					//!< number of accumulated samples
}
measurement_data_unequal_time_t;


int AllocateUnequalTimeMeasurementData(const int Norb, const int Nx, const int Ny, const int pbc_shift, const int L, measurement_data_unequal_time_t *restrict meas_data);

void DeleteUnequalTimeMeasurementData(measurement_data_unequal_time_t *restrict meas_data);


void AccumulateUnequalTimeMeasurement(const double sign, const double *const *Bu, const double *const *Bd, measurement_data_unequal_time_t *restrict meas_data);

void NormalizeUnequalTimeMeasurementData(measurement_data_unequal_time_t *meas_data);


void LoadUnequalTimeMeasurementData(const char *fnbase, const measurement_data_unequal_time_t *meas_data);

void SaveUnequalTimeMeasurementData(const char *fnbase, const measurement_data_unequal_time_t *meas_data);



#endif
