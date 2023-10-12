#!/bin/bash 

#SBATCH --job-name unit-test
#SBATCH -p cpu_gce_test
#SBATCH -n 1
#SBATCH -A fwk
#SBATCH -q test
#SBATCH --time=00:30:00

# Define the files to test 




# Define the apptainer from the fwk source - Can change this with the getopts 

# Define the package install rules

# Run things 
srun python $RUN 