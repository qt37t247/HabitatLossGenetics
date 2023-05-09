## Spatially explicit forward-time simulation with randomly generated landscapes

Please install python package rpy2 
https://github.com/rpy2/rpy2

This folder include 57 subfolders (three species of different mobility, two habitat configurations [random vs clumped], three habitat amount, three carrying capacity at cleared habitat). 

A SCENARIONAME comprises species (A, B or C) + habitat configuration (0 or 1) + habitat amount (C2, C5 or C8) + carrying capacity at cleared habitat (D1, D2 or D5)

For example, a subfolder named "A1C8D1" means it contains files to simulate species A in a clumped habitat cleared by 80% with cleared habitat remains 10% of the original carrying capacity.  

In addition to the combinations, each species has a null scenario where habitat loss never happen (Anull, Bnull and Cnull).  
