#!/bin/bash -l

#Derecho Submission
#PBS -N real
#PBS -A NWSA0002
#PBS -q main
#PBS -l walltime=01:00:00
#PBS -l select=1:ncpus=128:mpiprocs=128
#PBS -l job_priority=regular


module --force purge
# these are the same env modules that were used to compile WRF
module load ncarenv/23.09 gcc/13.2.0 ncarcompilers/1.0.0 cray-mpich/8.1.29 netcdf/4.9.2 parallel-netcdf/1.12.3 hdf5/1.14.3 udunits/2.2.28 ncview/2.1.9

# run executable of interest (ideal, real, wrf, etc.)
mpibind ./real.exe
