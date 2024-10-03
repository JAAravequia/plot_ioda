# plot_ioda
Script to plot observations processed in JEDI-IODA h5 format - based on JEDI tutorial scripts

### This script load the correct environment at CPTEC/INPE´s EGEON clustes
You must provide the date of the observations in the format YYYYMMDDHH. 

### The observations are supposed to be at files named as:

OBSPREFIX_obs_DATE.h5 where:

**OBSPREFIX** is the observation name in the list:

['aircraft', 'gnssrobndmo', 'gnssrobndmo-nopseudo', 'gnssrobndnbam', 'gnssrobndropp1d', 'gnssrorefncep', 'satwind', 'satwnd', 'sfc', 'sondes', 'abi_g16', 'ahi_himawari8', 'abi-clr_g16', 'ahi-clr_himawari8', 'amsua_aqua', 'amsua_metop-a', 'amsua_metop-b', 'amsua_n15', 'amsua_n18', 'amsua_n19', 'amsua-cld_aqua', 'amsua-cld_metop-a', 'amsua-cld_metop-b', 'amsua-cld_n15', 'amsua-cld_n18', 'amsua-cld_n19', 'iasi_metop-a', 'iasi_metop-b', 'mhs_metop-a', 'mhs_metop-b', 'mhs_n18', 'mhs_n19']

**DATE** is the date of observation in the format YYYYMMDDHH (e.g.: 2018041500 ) 
and runs plot_obs_loc_cpt.py .

**plot_obs_loc_cpt.py** is a modified version of plot_obs_loc.py that avoid an error in processing AMSU observations.

