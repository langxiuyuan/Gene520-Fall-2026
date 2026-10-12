#!/bin/bash
#SBATCH --job-name=chipseq
#SBATCH --time=1:00:00 # 1 hour of "wall time"
#SBATCH -N 1 # 1 Node
#SBATCH -c 4 # 4 processor
#SBATCH --mem=16gb
#SBATCH --partition=markov_gpu
#SBATCH --mail-user=xxl1432@case.edu

module load Perl
module load SAMtools
module load BEDTools
module load MACS3
module load Python/3.10.4-GCCcore-11.3.0


bash ./ChIP_SE.sh mm10
