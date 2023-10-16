#!/bin/bash
#PBS -q serial
#PBS -l select=1:ncpus=1:mem=15GB
#PBS -l walltime=720:00:00
#PBS -j oe

cd $PBS_O_WORKDIR
source /etc/profile.d/rec_modules.sh
module load miniconda
for i in {1..100}
do
source activate geog
cd /hpctmp/dbstq/HLG/Anull
sed "s/%SEED%/$i/" Anull_params.template.py > Anull_params.py
python Anull.py
cd ./GNX_mod-Anull_params/it--1/spp-spp_0/
cp mod-Anull_params_it--1_spp-spp_0_OTHER_STATS.csv /hpctmp/dbstq/HLG/Anull/run"$i"_count.csv
cp /hpctmp/dbstq/HLG/Anull/Mantel.R Mantel.R
source activate R
for j in *.vcf
do base=${j%.vcf*}
vcftools --vcf "$base".vcf --site-pi --out ${base}
plink --vcf "$base".vcf --allow-extra-chr --allow-no-sex --distance --out ${base}
vcftools --vcf "$base".vcf --het --out ${base}
done
R CMD BATCH Mantel.R
cp mantelrr.csv /hpctmp/dbstq/HLG/Anull/run"$i"_mantelrr.csv
cp fisf.csv /hpctmp/dbstq/HLG/Anull/run"$i"_fisf.csv
cp pis.csv /hpctmp/dbstq/HLG/Anull/run"$i"_.pis.csv
cd ../../
rm -rf it--1
done

module load R-4.0.4
cd /hpctmp/dbstq/HLG/Anull/
R CMD BATCH data_collect.R
