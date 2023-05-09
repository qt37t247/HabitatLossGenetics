#!/bin/bash
#PBS -q parallel12
#PBS -l select=1:ncpus=12:mem=45GB
#PBS -l walltime=720:00:00
#PBS -j oe

cd $PBS_O_WORKDIR
source /etc/profile.d/rec_modules.sh
module load miniconda
for i in {1..100}
do
source activate geog
cd /hpctmp/dbstq/HLG/empirical/t6
python t6.py
cd ./GNX_mod-t6_params/it--1/spp-spp_0/
cp mod-t6_params_it--1_spp-spp_0_OTHER_STATS.csv /hpctmp/dbstq/HLG/empirical/t6/run"$i"_count.csv
source activate R
for j in *.vcf
do base=${j%.vcf*}
vcftools --vcf "$base".vcf --site-pi --out ${base}
cp "$base".sites.pi /hpctmp/dbstq/HLG/empirical/t6/run"$i"_"$base".sites.pi
done
done

module load R-4.0.4
cd /hpctmp/dbstq/HLG/empirical/t6/
R CMD BATCH data_collect.R
