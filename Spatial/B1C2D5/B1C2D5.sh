#!/bin/bash
#PBS -q parallel12
#PBS -l select=1:ncpus=12:mem=45GB
#PBS -l walltime=720:00:00
#PBS -j oe

cd $PBS_O_WORKDIR
source /etc/profile.d/rec_modules.sh
module load miniconda
for i in {3001..3100}
do
source activate geog
cd /hpctmp/dbstq/HLG/B1C2D5
sed "s/%SEED%/$i/" B1C2D5_params.template.py > B1C2D5_params.py
python B1C2D5.py
cd ./GNX_mod-B1C2D5_params/it--1/spp-spp_0/
cp mod-B1C2D5_params_it--1_spp-spp_0_OTHER_STATS.csv /hpctmp/dbstq/HLG/B1C2D5/run"$i"_count.csv
cp /hpctmp/dbstq/HLG/B1C2D5/Mantel.R Mantel.R
source activate R
for j in *.vcf
do base=${j%.vcf*}
vcftools --vcf "$base".vcf --site-pi --out ${base}
plink --vcf "$base".vcf --allow-extra-chr --allow-no-sex --distance --out ${base}
cp "$base".sites.pi /hpctmp/dbstq/HLG/B1C2D5/run"$i"_"$base".sites.pi
done
R CMD BATCH Mantel.R
cp mantelrr.csv /hpctmp/dbstq/HLG/B1C2D5/run"$i"_mantelrr.csv
done

module load R-4.0.4
cd /hpctmp/dbstq/HLG/B1C2D5/
R CMD BATCH data_collect.R
