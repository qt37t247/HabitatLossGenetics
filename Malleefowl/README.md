# Genetic diversity loss under non-equilibrium scenarios of habitat loss

Manuscript title: Rate and extent of genetic diversity loss under non-equilibrium scenarios of habitat loss

In this project, we used Geonomics, a spatial explicit forward-time approach, to simulate across habitat loss scenarios with a variety of habitat amount and configuration to address the SLOSS debate in terms of genetic diversity. 

Geonomics: https://geonomics.readthedocs.io/en/latest/

This repository includes shell files, python scripts and R scripts required to perform the simulation in high-performance computation (HPC). 

## Required programs and settings

Create a conda environment, named "geog" to install Geonomics. 

Detailed instruction, see: https://geonomics.readthedocs.io/en/latest/install.html

Create a conda environment, named "R" to install vcftools

Detailed instruction, see: https://anaconda.org/bioconda/vcftools


## Workflow

Create a folder for each scenario

In each folder, you should have:

A shell file to perform a series of command in HPC ("SCENARIONAME.sh")

A python script to run Geonomics ("SCENARIONAME.py")

A python script of parameter file ("SCENARIONAME_params.py" or "SCENARIONAME_params.template.py")

A R script to calculate the summary statistics ("data_collect.R")

Two tif files of rasters (for real-world simulations ONLY)

Run each scenario after change directory to the local folder:
```bash
cd XXX/SCENARIONAME
qsub SCENARIONAME.sh
```

## Contact author

tangqiannus@gmail.com