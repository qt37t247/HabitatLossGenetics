# C1C8D1_params.py
import sys
import numpy as np
from rpy2 import robjects
robjects.r('''
# Function for working out habitat areas (A(t)) over time period [0,t_max], where habitat destruction occurs over time period [t_1,t_2], with a proportion 
# p_c of initial area A_0 being destroyed.
# deltat is the length of one time-step (a multiple of t_max, t_1 and t_2)
# Areas rounded to nearest integer
A_ts <- function(A_0,p_c,t_max,t_1,t_2,deltat){
  ts = seq(0,t_max,deltat)
  A_ts = numeric(length(ts))
  A_ts[1] = A_0
  # C is deforestation rate during [t_1,t_2]
  t_c = t_2-t_1
  C = -(1/t_c)*log(1-p_c)
  for(i in 2:length(ts)){
    t = ts[i]
    if(t<t_1){
      A_ts[i] = round(A_0)
    }else{
      if((t>=t_1)&(t<t_2)){
        A_ts[i] = round(A_0*exp(-C*(t-t_1)))
      }else{
        if(t>=t_2){
          A_ts[i] = round(A_0*(1-p_c))
        }
      }
    }
  }
  return(A_ts)
}

# Function for doing habitat destruction
# L is length of habitat area (assumed to be a square)
# p_c is proportion of initial habitat (A_0 = L^2) to be cleared over time period [t_1,t_2]
# p_a is probability that a cell that is not cleared has to be adjacent to a cell that is not cleared
# After choosing the cells that are not cleared, the other cells are chosen to be cleared randomly over time period [t_1,t_2]
# Output is list of habitat maps over time period [0,t_max], with the length of one time-step being deltat
habitat_destruction_v3 <- function(L,p_c,p_a,t_max,t_1,t_2,deltat,seed){
  set.seed(seed)
  # ts is vector of time-steps considered
  ts = seq(0,t_max,deltat)
  # A_0 is initial habitat area
  A_0 = L^2
  # A_ts_a is vector of habitat areas corresponding to ts
  A_ts_a = A_ts(A_0,p_c,t_max,t_1,t_2,deltat)
  # A_ts_b is subset of A_ts_a corresponding to period t_1 < t <= t_2
  A_ts_b = A_ts_a[(length(seq(0,t_1,deltat))+1):length(seq(0,t_2,deltat))]
  # A_0_cleared is habitat area cleared over [0,t_max]
  A_0_cleared = p_c*A_0
  # First, determine which cells are not cleared, as per habitat_map_a
  # habitat_map_a is grid of 1's and 0's, with 1 corresponding to habitat and 0 corresponding to cleared/destroyed habitat
  habitat_map_a = matrix(0,L,L)
  # habitat_map_notdestroyed_adj_ind_a is grid of numbers representing, for each cell, how many adjacent cells (excluding diagonals) are habitat
  habitat_map_notdestroyed_adj_ind_a = matrix(0,L,L)
  # habitat_map_ids is list of unique ids for each cell
  habitat_map_ids_a = 1:A_0
  if(A_0-A_0_cleared>0){
    # Sample first cell that is not cleared and update relevant vectors 
    notcleared_cell_id = sample(habitat_map_ids_a,1)
    notcleared_cell_row_id = notcleared_cell_id%%L
    if(notcleared_cell_row_id==0){
      notcleared_cell_row_id = L
      notcleared_cell_col_id = notcleared_cell_id%/%L
    }else{
      notcleared_cell_col_id = (notcleared_cell_id%/%L)+1
    }
    habitat_map_a[notcleared_cell_id] = 1
    if(notcleared_cell_row_id>1){
      habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id-1,notcleared_cell_col_id] = habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id-1,notcleared_cell_col_id]+1
    }
    if(notcleared_cell_row_id<L){
      habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id+1,notcleared_cell_col_id] = habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id+1,notcleared_cell_col_id]+1
    }
    if(notcleared_cell_col_id>1){
      habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id,notcleared_cell_col_id-1] = habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id,notcleared_cell_col_id-1]+1
    }
    if(notcleared_cell_col_id<L){
      habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id,notcleared_cell_col_id+1] = habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id,notcleared_cell_col_id+1]+1
    }
  }
  if(A_0-A_0_cleared>1){
    # Sample remaining cells that are not cleared and update relevant vectors 
    for(i in 2:(A_0-A_0_cleared)){
      if(sum(habitat_map_a)==A_0-1){
        notcleared_cell_id = habitat_map_ids_a[which(habitat_map_a==0)]
      }else{
        p_a_ind = rbinom(1,1,p_a)
        if(p_a_ind==0){
          notcleared_cell_id = sample(habitat_map_ids_a[which(habitat_map_a==0)],1)
        }else{
          notcleared_cell_id = sample(habitat_map_ids_a[which(habitat_map_a==0&habitat_map_notdestroyed_adj_ind_a>0)],1)
        }
      }
      notcleared_cell_row_id = notcleared_cell_id%%L
      if(notcleared_cell_row_id==0){
        notcleared_cell_row_id = L
        notcleared_cell_col_id = notcleared_cell_id%/%L
      }else{
        notcleared_cell_col_id = (notcleared_cell_id%/%L)+1
      }
      habitat_map_a[notcleared_cell_id] = 1
      if(notcleared_cell_row_id>1){
        habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id-1,notcleared_cell_col_id] = habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id-1,notcleared_cell_col_id]+1
      }
      if(notcleared_cell_row_id<L){
        habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id+1,notcleared_cell_col_id] = habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id+1,notcleared_cell_col_id]+1
      }
      if(notcleared_cell_col_id>1){
        habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id,notcleared_cell_col_id-1] = habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id,notcleared_cell_col_id-1]+1
      }
      if(notcleared_cell_col_id<L){
        habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id,notcleared_cell_col_id+1] = habitat_map_notdestroyed_adj_ind_a[notcleared_cell_row_id,notcleared_cell_col_id+1]+1
      }
    }
  }
  # habitat_map is grid of 1's and 0's, with 1 corresponding to habitat and 0 corresponding to cleared/destroyed habitat
  habitat_map = matrix(1,L,L)
  # habitat_maps is list of habitat maps over [0,t_max], which will be appended
  habitat_maps = list()
  # habitat_map_ids is list of unique ids for each cell
  habitat_map_ids = 1:A_0
  # for t <= t_1, there is no habitat destruction and hence the habitat map stays the same
  for(i in 1:length(seq(0,t_1,deltat))){
    habitat_maps[[i]] = habitat_map
  }
  # for t_1 < t <= t_2, there is habitat destruction 
  # A_t is used to keep track of habitat area over time
  # When A_t is equal to an element of A_ts_b, habitat_map is appended to habitat_maps
  # ind is used to keep track of which element of A_ts_b is being considered
  A_t = A_0
  ind = 1
  # Sample cells randomly according to cells that are cleared (i.e., are 0's) in habitat_map_a 
  # Sample first cell to be cleared and update relevant vectors 
  cleared_cell_id = sample(habitat_map_ids[which(habitat_map==1&habitat_map_a==0)],1)
  cleared_cell_row_id = cleared_cell_id%%L
  if(cleared_cell_row_id==0){
    cleared_cell_row_id = L
    cleared_cell_col_id = cleared_cell_id%/%L
  }else{
    cleared_cell_col_id = (cleared_cell_id%/%L)+1
  }
  habitat_map[cleared_cell_id] = 0.1
  # Update habitat area
  A_t = A_t-1
  # Check to see whether there is a need to append habitat map to list of habitat maps
  if(A_t==A_ts_b[ind]){
    habitat_maps[[length(seq(0,t_1,deltat))+ind]] = habitat_map
    ind = ind+1
  }
  # Sample remaining cells to be cleared and update relevant vectors 
  for(i in 2:A_0_cleared){
    if(length(habitat_map_ids[which(habitat_map==1&habitat_map_a==0)])==1){
      cleared_cell_id = habitat_map_ids[which(habitat_map==1&habitat_map_a==0)]
    }else{
      cleared_cell_id = sample(habitat_map_ids[which(habitat_map==1&habitat_map_a==0)],1)
    }
    cleared_cell_row_id = cleared_cell_id%%L
    if(cleared_cell_row_id==0){
      cleared_cell_row_id = L
      cleared_cell_col_id = cleared_cell_id%/%L
    }else{
      cleared_cell_col_id = (cleared_cell_id%/%L)+1
    }
    habitat_map[cleared_cell_id] = 0.1
    # Update habitat area
    A_t = A_t-1
    # Check to see whether there is a need to append habitat map to list of habitat maps
    if(A_t==A_ts_b[ind]){
      habitat_maps[[length(seq(0,t_1,deltat))+ind]] = habitat_map
      ind = ind+1
    }
  }
  # for t > t_2, there is no habitat destruction and hence the habitat map stays the same
  for(i in (length(seq(0,t_1,deltat))+ind):length(seq(0,t_max,deltat))){
    habitat_maps[[i]] = habitat_map
  }
  return(habitat_maps)
}''')
r_f = robjects.globalenv['habitat_destruction_v3']
nums = r_f(20, 0.8, 1, 1, 0, 1, 1, %SEED%)
nums = np.array(nums)
# This is a parameters file generated by Geonomics
# (by the gnx.make_parameters_file() function).


                   #   ::::::          :::    :: :::::::::::#
             #::::::    ::::   :::      ::    :: :: ::::::::::: ::#
          #:::::::::     ::            ::   :::::::::::::::::::::::::#
        #::::::::::                      :::::::::: :::::: ::::::::  ::#
      #  : ::::  ::                    ::::  : ::    :::::::: : ::  :    #
     # GGGGG :EEEE: OOOOO   NN   NN   OOOOO   MM   MM IIIIII  CCCCC SSSSS #
    # GG     EE    OO   OO  NNN  NN  OO   OO  MM   MM   II   CC     SS     #
    # GG     EE   OO     OO NN N NN OO     OO MMM MMM   II   CC     SSSSSS #
    # GG GGG EEEE OO     OO NN  NNN OO     OO MM M MM   II   CC         SS #
    # GG   G EE    OO   OO  NN   NN  OO   OO  MM   MM   II   CC        SSS #
     # GGGGG :EEEE: OOOOO   NN   NN   OOOOO   MM   MM IIIIII  CCCCC SSSSS #
      #    : ::::::::               :::::::::: ::              ::  :   : #
        #:    :::::                    :::::: :::             :::::::  #
          #    :::                      :::::  ::              ::::: #
             #  ::                      ::::                      #
                   #                                        #
                      #  :: ::    :::             #


params = {
#-----------------------------------------------------------------------------#

#-----------------#
#--- LANDSCAPE ---#
#-----------------#
    'landscape': {

    #------------#
    #--- main ---#
    #------------#
        'main': {
            #x,y (a.k.a. j,i) dimensions of the Landscape
            'dim':                      (20,20),
            #x,y resolution of the Landscape
            'res':                      (1,1),
            #x,y coords of upper-left corner of the Landscape
            'ulc':                      (0,0),
            #projection of the Landscape
            'prj':                      None,
            }, # <END> 'main'

    #--------------#
    #--- layers ---#
    #--------------#
        'layers': {

            #layer name (LAYER NAMES MUST BE UNIQUE!)
            'lyr_0': {

        #-------------------------------------#
        #--- layer num. 0: init parameters ---#
        #-------------------------------------#

                #initiating parameters for this layer
                'init': {

                    #parameters for a 'defined'-type layer
                    'defined': {
                        #raster to use for the layer
                        'rast':                     np.ones((20,20)),
                        #point coordinates
                        'pts':                    None,
                        #point values
                        'vals':                   None,
                        #interpolation method {None, 'linear', 'cubic',
                        #'nearest'}
                        'interp_method':          None,

                        }, # <END> 'defined'

                    }, # <END> 'init'

            #---------------------------------------#
            #--- layer num. 0: change parameters ---#
            #---------------------------------------#

                #landscape-change events for this Layer
                'change': {

                    0: {
                        #array or file for final raster of event, or directory
                        #of files for each stepwise change in event
                        'change_rast':      nums[2],
                        #starting timestep of event
                        'start_t':          10,
                        #ending timestep of event
                        'end_t':            11,
                        #number of stepwise changes in event
                        'n_steps':          1,
                        }, # <END> event 0

                    }, # <END> 'change'

                }, # <END> layer num. 0


    #### NOTE: Individual Layers' sections can be copy-and-pasted (and
    #### assigned distinct keys and names), to create additional Layers.


            } # <END> 'layers'

        }, # <END> 'landscape'


#-----------------------------------------------------------------------------#

#-----------------#
#--- COMMUNITY ---#
#-----------------#
    'comm': {

        'species': {

            #species name (SPECIES NAMES MUST BE UNIQUE!)
            'spp_0': {

            #-----------------------------------#
            #--- spp num. 0: init parameters ---#
            #-----------------------------------#

                'init': {
                    #starting number of individs
                    'N':                4000,
                    #carrying-capacity Layer name
                    'K_layer':          'lyr_0',
                    #multiplicative factor for carrying-capacity layer
                    'K_factor':         10,
                    }, # <END> 'init'

            #-------------------------------------#
            #--- spp num. 0: mating parameters ---#
            #-------------------------------------#

                'mating'    : {
                    #age(s) at sexual maturity (if tuple, female first)
                    'repro_age':                1,
                    #whether to assign sexes
                    'sex':                      True,
                    #ratio of males to females
                    'sex_ratio':                1/1,
                    #intrinsic growth rate
                    'R':                        0.5,
                    #intrinsic birth rate (MUST BE 0<=b<=1)
                    'b':                        0.1,
                    #expectation of distr of n offspring per mating pair
                    'n_births_distr_lambda':    7,
                    #whether n births should be fixed at n_births_dist_lambda
                    'n_births_fixed':           True,
                    #radius of mate-search area (None, for panmixia)
                    'mating_radius':            1,
                    #whether individs should choose nearest neighs as mates
                    'choose_nearest_mate':      False,
                    #whether mate-choice should be inverse distance-weighted
                    'inverse_dist_mating':      False,
                    }, # <END> 'mating'

            #----------------------------------------#
            #--- spp num. 0: mortality parameters ---#
            #----------------------------------------#

                'mortality'     : {
                    #maximum age
                    'max_age':                      25,
                    #min P(death) (MUST BE 0<=d_min<=1)
                    'd_min':                        0,
                    #max P(death) (MUST BE 0<=d_max<=1)
                    'd_max':                        1,
                    #width of window used to estimate local pop density
                    'density_grid_window_width':    1,
                    }, # <END> 'mortality'

            #---------------------------------------#
            #--- spp num. 0: movement parameters ---#
            #---------------------------------------#

                'movement': {
                    #whether or not the species is mobile
                    'move':                                 True,
                    #mode of distr of movement direction
                    'direction_distr_mu':                   0,
                    #concentration of distr of movement direction
                    'direction_distr_kappa':                0,
                    #1st param of distr of movement distance
                    'movement_distance_distr_param1':       -0.3465736,
                    #2nd param of distr of movement distance
                    'movement_distance_distr_param2':       0.8325546,
                    #movement distance distr to use ('lognormal','levy','wald')
                    'movement_distance_distr':              'lognormal',
                    #1st param of distr of dispersal distance
                    'dispersal_distance_distr_param1':      -0.3465736,
                    #2nd param of distr of dispersal distance
                    'dispersal_distance_distr_param2':      0.8325546,
                    #dispersal distance distr to use ('lognormal','levy','wald')
                    'dispersal_distance_distr':             'lognormal',
                    },    # <END> 'movement'


            #---------------------------------------------------#
            #--- spp num. 0: genomic architecture parameters ---#
            #---------------------------------------------------#

                'gen_arch': {
                    #file defining custom genomic arch
                    'gen_arch_file':            None,
                    #num of loci
                    'L':                        1000,
                    #num of chromosomes
                    'l_c':                     [1000],
                    #fixed starting allele freq; None/False -> rand; True -> 0.5
                    'start_p_fixed':            False,
                    #whether to start neutral locus freqs at 0
                    'start_neut_zero':          False,
                    #genome-wide per-base neutral mut rate (0 to disable)
                    'mu_neut':                  1e-9,
                    #genome-wide per-base deleterious mut rate (0 to disable)
                    'mu_delet':                 0,
                    #shape of distr of deleterious effect sizes
                    'delet_alpha_distr_shape':  0,
                    #scale of distr of deleterious effect sizes
                    'delet_alpha_distr_scale':  0,
                    #alpha of distr of recomb rates
                    'r_distr_alpha':            None,
                    #beta of distr of recomb rates
                    'r_distr_beta':             None,
                    #whether loci should be dominant (for allele '1')
                    'dom':                      False,
                    #whether to allow pleiotropy
                    'pleiotropy':               False,
                    #custom fn for drawing recomb rates
                    'recomb_rate_custom_fn':    None,
                    #number of recomb paths to hold in memory
                    'n_recomb_paths_mem':       int(1e4),
                    #total number of recomb paths to simulate
                    'n_recomb_paths_tot':       int(1e5),
                    #num of crossing-over events (i.e. recombs) to simulate
                    'n_recomb_sims':            10000,
                    #whether to generate recombination paths at each timestep
                    'allow_ad_hoc_recomb':      False,
                    #whether to jitter recomb bps, to correctly track num_trees
                    'jitter_breakpoints':       False,
                    #whether to save mutation logs
                    'mut_log':                  False,
                    #whether to use tskit (to record full spatial pedigree)
                    'use_tskit':                False,
                    #time step interval for simplication of tskit tables
                    'tskit_simp_interval':      100,


                    }, # <END> 'gen_arch'


                }, # <END> spp num. 0


    #### NOTE: individual Species' sections can be copy-and-pasted (and
    #### assigned distinct keys and names), to create additional Species.


            }, # <END> 'species'

        }, # <END> 'comm'


#-----------------------------------------------------------------------------#

#-------------#
#--- MODEL ---#
#-------------#
    'model': {
        #total Model runtime (in timesteps)
        'T':            210,
        #min burn-in runtime (in timesteps)
        'burn_T':       30,
        #seed number
        'num':          %SEED%,


        #-----------------------------#
        #--- iterations parameters ---#
        #-----------------------------#
        'its': {
            #num iterations
            'n_its':            1,
            #whether to randomize Landscape each iteration
            'rand_landscape':   False,
            #whether to randomize Community each iteration
            'rand_comm':        False,
            #whether to randomize GenomicArchitectures each iteration
            'rand_genarch':     True,
            #whether to burn in each iteration
            'repeat_burn':      False,
            }, # <END> 'iterations'


        #----------------------------------#
        #--- data-collection parameters ---#
        #----------------------------------#
        'data': {
            'sampling': {
                #sampling scheme {'all', 'random', 'point', 'transect'}
                'scheme':               'all',
                #sample size at each point, for point & transect sampling
                'n':                    250,
                #coords of collection points, for point sampling
                'points':               None,
                #coords of transect endpoints, for transect sampling
                'transect_endpoints':   None,
                #num points along transect, for transect sampling
                'n_transect_points':    None,
                #collection radius around points, for point & transect sampling
                'radius':               None,
                #when to collect data
                'when':                 5,
                #whether to save current Layers when data is collected
                'include_landscape':    False,
                #whether to include fixed loci in VCF files
                'include_fixed_sites':  True,
                },
            'format': {
                #format for genetic data {'vcf', 'fasta'}
                'gen_format':           'vcf',
                #format for vector geodata {'csv', 'shapefile', 'geojson'}
                'geo_vect_format':      'csv',
                #format for raster geodata {'geotiff', 'txt'}
                'geo_rast_format':      'geotiff',
                #format for files containing non-neutral loci
                'nonneut_loc_format':   'csv',
                },
            }, #<END> 'data'

        #-----------------------------------#
        #--- stats-collection parameters ---#
        #-----------------------------------#
        'stats': {
            #number of individs at time t
            'Nt': {
                #whether to calculate
                'calc':     True,
                #calculation frequency (in timesteps)
                'freq':     1,
                },
            #heterozgosity
            'het': {
                #whether to calculate
                'calc':     False,
                #calculation frequency (in timesteps)
                'freq':     5,
                #whether to mean across sampled individs
                'mean': False,
                },
            #minor allele freq
            'maf': {
                #whether to calculate
                'calc':     False,
                #calculation frequency (in timesteps)
                'freq':     5,
                },
            #mean fitness
            'mean_fit': {
                #whether to calculate
                'calc':     False,
                #calculation frequency (in timesteps)
                'freq':     5,
                },
            #linkage disequilibirum
            'ld': {
                #whether to calculate
                'calc':     False,
                #calculation frequency (in timesteps)
                'freq':     100,
                },
            }, # <END> 'stats'

        } # <END> 'model'

    } # <END> params
