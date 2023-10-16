## Simulations on virtual landscape of different amount and configuration of habitat loss

We created 57 scenarios (19 habitat loss scenarios for three species of different mobility). See detailed configuration in the excel sheet ("Table_S1.xlsx")


## Required programs and settings

Create a conda environment, named "geog" to install Geonomics and rpy2. 

Detailed instruction, see: 

https://geonomics.readthedocs.io/en/latest/install.html

https://github.com/rpy2/rpy2

Create a conda environment, named "R" to install vcftools, plink, R and R package "vegan"

Detailed instruction, see: 

https://anaconda.org/bioconda/vcftools

https://anaconda.org/bioconda/plink

https://anaconda.org/conda-forge/r-base

https://anaconda.org/conda-forge/r-vegan


## Workflow

Create a folder for each scenario and name it "SCENARIONAME" (to be variable according to what you want to name each scenario)

In each folder, you should have:

A shell file to perform a series of command in HPC ("SCENARIONAME.sh")

A python script to run Geonomics ("SCENARIONAME.py")

A python script of parameter file ("SCENARIONAME_params.template.py")

A R script to calculate spatial genetic structuring ("Mantel.R")

A R script to calculate the summary statistics ("data_collect.R")

Two tif files of rasters (for real-world simulations ONLY)

Run each scenario after change directory to the local folder:
```bash
cd /SCENARIONAME
qsub SCENARIONAME.sh
```
Or, consider submit all scenarios at once with the script in "Batch_work.txt". Make sure all scenario folders are in the same folder.

"Batch_work.txt" also include code to download results for all scenarios once the simulations are done. 

After collect results of all scenarios, you may modify and use the R script ("visaulize.R") to plot the results.


## Contact author

tangqiannus@gmail.com
