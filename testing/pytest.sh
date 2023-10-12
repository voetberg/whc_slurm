#!/bin/bash 

#SBATCH --job-name unit-test
#SBATCH -p cpu_gce_test
#SBATCH -n 1
#SBATCH -A fwk
#SBATCH -q test
#SBATCH --time=00:30:00

# Define the files to test 
while getopts ":f:" option
    do 
        case "$option" in 
            "f") 
                f = $F 
                ;;
            *) 
                f = ""
                ;;
    esac 
    echo "Testing file $f"
done 

srun pytest $F
