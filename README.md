
<!-- README.md is generated from README.Rmd. Please edit that file -->

# extractus

<!-- badges: start -->
<!-- badges: end -->

`extractus` is a comprehensive R package designed to simplify querying
various chemical, toxicological, and biological databases such as
PubChem, the Comparative Toxicogenomics Database (CTD), EPA’s ICE
(Integrated Chemical Environment), EPA’s IRIS (Integrated Risk
Information System), and EPA’s COMPTOX. The package facilitates
interaction with APIs, providing curated and user-friendly outputs.

To communicate to Pubchem, `extractus` relies on the package`webchem`.

## Installation

You can install the package from GitHub:

``` r
# Install devtools if not already installed
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("pak")
}

# Install the package from GitHub
pak::pkg_install("c1au6i0/extractus")
```

## Features

### PubChem Database

PubChem is a public repository for information on the biological
activities of small molecules. It provides information on chemical
structures, identifiers, chemical and physical properties, biological
activities, safety and toxicity information, patents, literature
citations, and more.

A series of functions that rely on the `webchem` package are used to
extract chemical information, Globally Harmonized System (GHS)
classification data, or flavor classification from PubChem.

The function `extr_chem_info` retrieves chemical information of
IUPAC-named chemicals. A warning is displayed if the chemical is not
found.

``` r
library(extractus)
chem_info <- extr_chem_info(IUPAC_names = c("Formaldehyde", "Aflatoxin B1"))
#> Querying Formaldehyde. OK (HTTP 200).
#> Querying Aflatoxin B1. OK (HTTP 200).
#> ℹ Querying 712 and 186907.
```

``` r
names(chem_info)
#>  [1] "cid"                         "iupac_name"                 
#>  [3] "cas_rn"                      "cid_all"                    
#>  [5] "cas_rn_all"                  "molecular_formula"          
#>  [7] "molecular_weight"            "canonical_smiles"           
#>  [9] "isomeric_smiles"             "in_ch_i"                    
#> [11] "in_ch_i_key"                 "iupac_name_y"               
#> [13] "x_log_p"                     "exact_mass"                 
#> [15] "monoisotopic_mass"           "tpsa"                       
#> [17] "complexity"                  "charge"                     
#> [19] "h_bond_donor_count"          "h_bond_acceptor_count"      
#> [21] "rotatable_bond_count"        "heavy_atom_count"           
#> [23] "isotope_atom_count"          "atom_stereo_count"          
#> [25] "defined_atom_stereo_count"   "undefined_atom_stereo_count"
#> [27] "bond_stereo_count"           "defined_bond_stereo_count"  
#> [29] "undefined_bond_stereo_count" "covalent_unit_count"        
#> [31] "volume3d"                    "x_steric_quadrupole3d"      
#> [33] "y_steric_quadrupole3d"       "z_steric_quadrupole3d"      
#> [35] "feature_count3d"             "feature_acceptor_count3d"   
#> [37] "feature_donor_count3d"       "feature_anion_count3d"      
#> [39] "feature_cation_count3d"      "feature_ring_count3d"       
#> [41] "feature_hydrophobe_count3d"  "conformer_model_rmsd3d"     
#> [43] "effective_rotor_count3d"     "conformer_count3d"          
#> [45] "fingerprint2d"               "query"
```

Two functions are used to extract specific sections of PubChem chemical
information using CASRN:

- `extr_pubchem_ghs` extracts Globally Harmonized System (GHS) codes.
- `extr_pubchem_fema` extracts flavor profile data.”

``` r
ghs_info <- extr_pubchem_ghs(casrn = c("50-00-0", "64-17-5"))
#> ℹ Getting PubChem IDS...
#> Querying 50-00-0. OK (HTTP 200).
#> Querying 712. OK (HTTP 200).
#> ℹ Getting PubChem IDS...
#> Querying 64-17-5. OK (HTTP 200).
#> Querying 702. OK (HTTP 200).
```

``` r
fema_info <- extr_pubchem_fema(casrn = c("50-00-0", "123-68-2"))
#> Querying 50-00-0. OK (HTTP 200).
#> Querying 712. Not Found (HTTP 404).
#> ℹ FEMA for 50-00-0 not found!
#> Querying 123-68-2. OK (HTTP 200).
#> Querying 31266. OK (HTTP 200).
```

### ICE Database

The Integrated Chemical Environment (ICE) database, managed by the EPA,
provides access to a variety of data related to chemical toxicity,
exposure, and risk assessment. It includes data from high-throughput
screening assays, in vivo studies, and computational models.

`extr_ice` provides access to EPA’s Integrated Chemical Environment
(ICE) database for toxicological and exposure-related data.

``` r
ice_data<- extr_ice(casrn = c("50-00-0"), assays = NULL) # assays is null so all assays are retrieved
#> Sending request to ICE database...
#> Request succeeded with status code: 200
```

``` r
names(ice_data)
#>  [1] "assay"              "endpoint"           "substanceType"     
#>  [4] "casrn"              "qsarReadyId"        "value"             
#>  [7] "unit"               "species"            "receptorSpecies"   
#> [10] "route"              "sex"                "strain"            
#> [13] "lifeStage"          "tissue"             "lesion"            
#> [16] "location"           "assaySource"        "inVitroAssayFormat"
#> [19] "reference"          "referenceUrl"       "dtxsid"            
#> [22] "substanceName"      "pubMedId"
```

### IRIS

The Integrated Risk Information System (IRIS) is a database managed by
the EPA that contains information on the health effects of exposure to
various substances found in the environment. It provides qualitative and
quantitative health risk information.

`extr_iris` provides access to EPA’s IRIS database and accepts queries
of CASRN or IUPAC names of chemicals.

``` r
iris_info <- extr_iris(c("glyphosate", "50-00-0"))
#> Quering glyphosate to EPA IRIS database...
#> Request succeeded with status code: 200
#> Quering 50-00-0 to EPA IRIS database...
#> Request succeeded with status code: 200
```

``` r
names(iris_info)
#> [1] "chemical_name"                 "casrn"                        
#> [3] "exposure_route"                "assessment_type"              
#> [5] "critical_effect_or_tumor_type" "woe_characterization"         
#> [7] "toxicity_value_type"           "toxicity_value"
```

### COMPTOX

The CompTox Chemistry Dashboard, managed by the EPA, provides access to
data on chemical structures, properties, and associated bioactivity
data. It integrates data from various sources to support chemical safety
assessments. ``extr_comptox\` extracts data from the CompTox Chemistry
Dashboard using both CASRN and IUPAC names of chemicals.

``` r
info_comptox <- extr_comptox(ids = c("Aspirin", "50-00-0"))
#> ℹ Getting CompTox info...
#> ℹ Sending request to CompTox...
#> Request succeeded with status code: 202
#> ℹ Getting info from CompTox...
#> 
#> Request succeeded with status code: 200
```

``` r
names(info_comptox)
#>  [1] "input"                                                         
#>  [2] "found_by"                                                      
#>  [3] "dtxsid"                                                        
#>  [4] "preferred_name"                                                
#>  [5] "dtxcid"                                                        
#>  [6] "casrn"                                                         
#>  [7] "inchikey"                                                      
#>  [8] "iupac_name"                                                    
#>  [9] "smiles"                                                        
#> [10] "inchi_string"                                                  
#> [11] "ms_ready_smiles"                                               
#> [12] "qsar_ready_smiles"                                             
#> [13] "molecular_formula"                                             
#> [14] "average_mass"                                                  
#> [15] "monoisotopic_mass"                                             
#> [16] "qc_level"                                                      
#> [17] "safety_data"                                                   
#> [18] "expocast"                                                      
#> [19] "data_sources"                                                  
#> [20] "toxval_data"                                                   
#> [21] "number_of_pubmed_articles"                                     
#> [22] "pubchem_data_sources"                                          
#> [23] "cpdat_count"                                                   
#> [24] "iris_link"                                                     
#> [25] "pprtv_link"                                                    
#> [26] "wikipedia_article"                                             
#> [27] "qc_notes"                                                      
#> [28] "abstract_shifter"                                              
#> [29] "toxprint_fingerprint"                                          
#> [30] "actor_report"                                                  
#> [31] "synonym_identifier"                                            
#> [32] "related_relationship"                                          
#> [33] "associated_toxcast_assays"                                     
#> [34] "toxval_details"                                                
#> [35] "chemical_properties_details"                                   
#> [36] "bioconcentration_factor_test_pred"                             
#> [37] "boiling_point_degc_test_pred"                                  
#> [38] "x48hr_daphnia_lc50_mol_l_test_pred"                            
#> [39] "density_g_cm_3_test_pred"                                      
#> [40] "devtox_test_pred"                                              
#> [41] "x96hr_fathead_minnow_mol_l_test_pred"                          
#> [42] "flash_point_degc_test_pred"                                    
#> [43] "melting_point_degc_test_pred"                                  
#> [44] "ames_mutagenicity_test_pred"                                   
#> [45] "oral_rat_ld50_mol_kg_test_pred"                                
#> [46] "surface_tension_dyn_cm_test_pred"                              
#> [47] "thermal_conductivity_mw_m_k_test_pred"                         
#> [48] "tetrahymena_pyriformis_igc50_mol_l_test_pred"                  
#> [49] "viscosity_cp_cp_test_pred"                                     
#> [50] "vapor_pressure_mmhg_test_pred"                                 
#> [51] "water_solubility_mol_l_test_pred"                              
#> [52] "atmospheric_hydroxylation_rate_aoh_cm3_molecule_sec_opera_pred"
#> [53] "bioconcentration_factor_opera_pred"                            
#> [54] "biodegradation_half_life_days_days_opera_pred"                 
#> [55] "boiling_point_degc_opera_pred"                                 
#> [56] "henrys_law_atm_m3_mole_opera_pred"                             
#> [57] "opera_km_days_opera_pred"                                      
#> [58] "octanol_air_partition_coeff_logkoa_opera_pred"                 
#> [59] "soil_adsorption_coefficient_koc_l_kg_opera_pred"               
#> [60] "octanol_water_partition_logp_opera_pred"                       
#> [61] "melting_point_degc_opera_pred"                                 
#> [62] "opera_pkaa_opera_pred"                                         
#> [63] "opera_pkab_opera_pred"                                         
#> [64] "vapor_pressure_mmhg_opera_pred"                                
#> [65] "water_solubility_mol_l_opera_pred"                             
#> [66] "expocast_median_exposure_prediction_mg_kg_bw_day"              
#> [67] "nhanes"                                                        
#> [68] "toxcast_number_of_assays_total"                                
#> [69] "toxcast_percent_active"
```

### Tox Info

The function `extr_tox` is a wrapper used to call all the
above-mentioned functions and retrieve a list of dataframes.

``` r
info_tox <- extr_tox(casrn = c("Aspirin", "50-00-0"))
#> ℹ Getting PubChem IDS...
#> Querying Aspirin. OK (HTTP 200).
#> Querying 2244. OK (HTTP 200).
#> ℹ Getting PubChem IDS...
#> Querying 50-00-0. OK (HTTP 200).
#> Querying 712. OK (HTTP 200).
#> ℹ Getting CompTox info...
#> ℹ Sending request to CompTox...
#> Request succeeded with status code: 202ℹ Getting info from CompTox...
#> Request succeeded with status code: 200Sending request to ICE database...Request succeeded with status code: 200Quering Aspirin to EPA IRIS database...Request succeeded with status code: 200Quering 50-00-0 to EPA IRIS database...Request succeeded with status code: 200
```

### CTD Database

The Comparative Toxicogenomics Database (CTD) provides information about
the interactions between chemicals, genes, and diseases. It helps in
understanding the effects of environmental exposures on human health.

A series of functions interact with the CTD database.

`extr_ctd` extracts information related to chemical-gene or pathway
associations.

``` r
input_terms <- c("50-00-0", "64-17-5", "methanal", "ethanol")
ctd_association <- extr_ctd(
   input_terms = input_terms,
   category = "chem",
   report_type = "genes_curated",
   input_term_search_type = "directAssociations",
   action_types = "ANY",
   ontology = c("go_bp", "go_cc")
 )
#> Sending request to CTD database...
#> Request succeeded with status code: 200
```

``` r


 # Get expresssion data
 ctd_expression <-  extr_ctd(input_terms = input_terms,
    report_type = "cgixns",
    category = "chem",
    action_types = "expression")
#> Sending request to CTD database...
#> Request succeeded with status code: 200
```

``` r
 
names(ctd_expression)
#>  [1] "x_input"             "chemical_name"       "chemical_id"        
#>  [4] "cas_rn"              "gene_symbol"         "gene_id"            
#>  [7] "organism"            "organism_id"         "interaction"        
#> [10] "interaction_actions" "pub_med_i_ds"
```

CTD Tetramers are computationally generated information units that
interrelate four data types from the CTD: a chemical, gene product,
phenotype, and disease. They help in understanding the complex
relationships between these entities and their combined impact on human
health.

`extr_tetramer` extract info related to tetramers from CTD.

``` r
tetramer_data <- extr_tetramer(
   chem = c("50-00-0", "ethanol"),
   disease = "",
   gene = "",
   go = "",
   input_term_search_type = "directAssociations",
   qt_match_type = "equals"
 )
#> Sending request to CTD database for tetramer data for 50-00-0...
#> Request succeeded with status code: 200
#> Sending request to CTD database for tetramer data for ethanol...
#> Request succeeded with status code: 200
```

``` r

names(tetramer_data)
#> [1] "query"        "chemical"     "chemical_id"  "gene"         "gene_id"     
#> [6] "phenotype"    "phenotype_id" "disease"      "disease_id"
```
