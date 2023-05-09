# XXX_params.py
import sys
import numpy as np
from PIL import Image
imi = Image.open('t6ri.tif')
imiarray = np.array(imi)
im = Image.open('t6r.tif')
imarray = np.array(im)
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
                        'rast':                   imiarray,
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
                        'change_rast':      imarray,
                        #starting timestep of event
                        'start_t':          10,
                        #ending timestep of event
                        'end_t':            110,
                        #number of stepwise changes in event
                        'n_steps':          10,
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
                    'repro_age':                3,
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
                    'max_age':                      28,
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
                    'mu_neut':                  1e-8,
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
        'T':            230,
        #min burn-in runtime (in timesteps)
        'burn_T':       30,
        #seed number
        'num':          None,


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
                'scheme':               'point',
                #sample size at each point, for point & transect sampling
                'n':                    1,
                #coords of collection points, for point sampling
                'points':               ((6,13),(10,10),(11,9),(13,6),(14,6),(16,5)),
                #coords of transect endpoints, for transect sampling
                'transect_endpoints':   None,
                #num points along transect, for transect sampling
                'n_transect_points':    None,
                #collection radius around points, for point & transect sampling
                'radius':               0.5,
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
