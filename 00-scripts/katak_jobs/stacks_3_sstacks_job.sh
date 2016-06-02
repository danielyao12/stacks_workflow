#!/bin/bash

#SBATCH -J "sstacks"
#SBATCH -o log_%j
#SBATCH -c 1
#SBATCH -p ibismini
#SBATCH --mail-type=ALL
#SBATCH --mail-user="$YOUREMAILADDRESS"
#SBATCH --time=1-00:00
#SBATCH --mem=40000

# Move to directory where job was submitted
cd $SLURM_SUBMIT_DIR

# Assign genotypes to individuals for loci in catalog
./00-scripts/stacks_3_sstacks.sh
