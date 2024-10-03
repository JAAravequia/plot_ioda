#!/bin/bash

conda deactivate ## be sure to use conda from correct path
module reset
module load anaconda3-2022.05-gcc-11.2.0-q74p53i
source "/opt/spack/opt/spack/linux-rhel8-zen2/gcc-11.2.0/anaconda3-2022.05-q74p53iarv7fk3uin3xzsgfmov7rqomj/etc/profile.d/conda.sh"
conda activate /mnt/beegfs/professor/conda/envs/mpasjedi


export ymdh=$1
# due to some unknown problem to plot metob-b amsu dada
# I do move it to another extention, so it do not break other plots.
mv amsua_metop-b_obs_${ymdh}.h5 amsua_metop-b_obs_${ymdh}.h5.notplotable
cd graphics/standalone

conda activate
conda activate /mnt/beegfs/professor/conda/envs/mpasjedi
python plot_obs_loc_cpt.py cycling ${ymdh}

mv *.png ../../
## Just to return metop-b AMSU to .h5 extension
cd ../../
mv amsua_metop-b_obs_${ymdh}.h5.notplotable amsua_metop-b_obs_${ymdh}.h5 
cd graphics/standalone
