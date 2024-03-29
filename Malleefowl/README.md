## Simulations on a case study of malleefowl

The original article for the case study is:

Stenhouse, P., Onley, I. R., Mitchell, K. J., Moseby, K. E., & Austin, J. J. (2022). Spatial genetic structure and limited gene flow in fragmented populations of the threatened Malleefowl (Leipoa ocellata). _Ecological Genetics and Genomics, 24_, 100127.

We simulated over seven transects from the original study (corresponding to the digit in the SCENARIONAME).

For each transect, we produced two habitat loss scnearios accounting for a gradual habitat loss from 1800 to 1900 (SCENARIONAME start with "d") and an instant habitat loss at 1850 (SCENARIONAME start with "t"), respectively. 

For each transect, we also applied two sampling schemes, one to sample all available simulated individuals (SCENARIONAME start with transect number), the other to sample the same number of individuals at the same location as the original study did (SCENARIONAME end with "s"). 

Vegetation data is available at National Vegetation Information System (NVIS) Version 6.0:
[http://www.environment.gov.au/fed/catalog/main/home.page](http://www.environment.gov.au/fed/catalog/search/resource/details.page?uuid=%7Bab942d6d-9efd-4cf2-bec7-4c1521b83803%7D)

We downloaded the shapefiles and rasterized to 1 km x 1 km with QGIS. Exported raster is cropped into seven transects with the R script ("transects.R") 


## Workflow

Create a folder for each scenario

In each folder, you should have:

Two tif files of rasters of habitat before and after habitat destruction respectively ("..ri.tif" and "..r.tif")

A shell file to perform a series of command in HPC ("SCENARIONAME.sh")

A python script to run Geonomics ("SCENARIONAME.py")

A python script of parameter file ("SCENARIONAME_params.py")

A R script to calculate the summary statistics ("data_collect.R")

Run each scenario after change directory to the local folder:
```bash
cd XXX/SCENARIONAME
qsub SCENARIONAME.sh
```


