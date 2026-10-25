#!/bin/bash
#SBATCH --job-name=chipseq
#SBATCH --time=24:00:00 # 1 hour of "wall time"
#SBATCH -N 1 # 1 Node
#SBATCH -c 12 # 4 processor
#SBATCH --mem=96gb
#SBATCH --partition=markov_gpu
#SBATCH --mail-user=xxl1432@case.edu

module load Perl
module load SAMtools
module load BEDTools
module load Python/3.10.4-GCCcore-11.3.0


bash ./1.mapping_hic_qc_hg19.sh
bash ./2.hic.sh
