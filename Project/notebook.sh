#!/bin/bash
#PBS -N DEPLOY                
#PBS -l nodes=1:ppn=104         
#PBS -o note.out  
#PBS -e note.err 
#PBS -q gpu   
           


# Load required modules (if needed)
      

# Change to the directory from where the job was submitted
cd $PBS_O_WORKDIR

source /home/spack/spack/share/spack/setup-env.sh


spack load python@3.11

source /home/mohammaddawood.omidi_asp25/Project/myenv/bin/activate

papermill   main.ipynb    output.ipynb
                     
