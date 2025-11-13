#!/bin/bash
#SBATCH --job-name=
#SBATCH --mail-user=kevinzen@umich.edu
#SBATCH --mail-type=BEGIN,END
#SBATCH --gpus=1
#SBATCH --nodes=1
#SBATCH --mem-per-gpu=2g
#SBATCH --time=00:10:00
#SBATCH --account=stats_dept1
#SBATCH --partition=gpu
#SBATCH --output=/home/kevinzen/Research/nanoGPT/%x-%j.out
module load python3.11-anaconda/2024.02
python sample.py --out_dir=out-shakespeare-char
