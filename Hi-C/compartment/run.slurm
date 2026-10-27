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
module load R-bundle-CRAN/2025.11-foss-2025b


bash ./1.hg19_run.compart_200k.sh
