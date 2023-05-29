#!/bin/bash
#PBS -q parallel12
#PBS -l select=1:ncpus=12:mem=45GB
#PBS -l walltime=720:00:00
#PBS -j oe

cd $PBS_O_WORKDIR
source /etc/profile.d/rec_modules.sh
module load miniconda
for i in {4301..4400}
do
source activate geog
cd /hpctmp/dbstq/HLG/C0C5D5
sed "s/%SEED%/$i/" C0C5D5_params.template.py > C0C5D5_params.py
python C0C5D5.py
cd ./GNX_mod-C0C5D5_params/it--1/spp-spp_0/
cp mod-C0C5D5_params_it--1_spp-spp_0_OTHER_STATS.csv /hpctmp/dbstq/HLG/C0C5D5/run"$i"_count.csv
cp /hpctmp/dbstq/HLG/C0C5D5/Mantel.R Mantel.R
source activate R
for j in *.vcf
do base=${j%.vcf*}
vcftools --vcf "$base".vcf --site-pi --out ${base}
plink --vcf "$base".vcf --allow-extra-chr --allow-no-sex --distance --out ${base}
cp "$base".sites.pi /hpctmp/dbstq/HLG/C0C5D5/run"$i"_"$base".sites.pi
done
R CMD BATCH Mantel.R
cp mantelrr.csv /hpctmp/dbstq/HLG/C0C5D5/run"$i"_mantelrr.csv
done

module load R-4.0.4
cd /hpctmp/dbstq/HLG/C0C5D5/
R CMD BATCH data_collect.R
