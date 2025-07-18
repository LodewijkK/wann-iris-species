#!/bin/bash
#SBATCH --job-name=myjob
#SBATCH --output=output.txt
#SBATCH --time=01:00:00

# module load python/3.9  # Load any needed modules
module load 2023
module load scikit-learn/1.3.1-gfbf-2023a
module load Lumerical/2022-R1.1-OpenMPI-4.1.5
python -m pip install --user mpi4py gym==0.9.6
python -m pip install --user opencv-python
python -m pip install --user mnist
# srun python wann_train.py -p p/iris.json -n 8
srun python wann_train.py -p p/mnist256.json -n 8
