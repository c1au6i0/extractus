#' items_to_down
#'
#' Columns of Main Data of CompTox extracted data. Used in `get_comptox`
#' @seealso [get_comptox()]
items_to_down <- function() {
  c(
    "DTXSID",
    "PREFERRED_NAME",
    "DTXCID",
    "CASRN",
    "INCHIKEY",
    "IUPAC_NAME",
    "SMILES",
    "INCHI_STRING",
    "MOLECULAR_FORMULA",
    "SAFETY_DATA",
    "TOXVAL_DATA",
    "NUMBER_OF_PUBMED_ARTICLES",
    "PUBCHEM_DATA_SOURCES",
    "CPDAT_COUNT",
    "IRIS_LINK",
    "PPRTV_LINK",
    "BIOCONCENTRATION_FACTOR_TEST_PRED",
    "48HR_DAPHNIA_LC50_MOL/L_TEST_PRED",
    "DEVTOX_TEST_PRED",
    "96HR_FATHEAD_MINNOW_MOL/L_TEST_PRED",
    "AMES_MUTAGENICITY_TEST_PRED",
    "ORAL_RAT_LD50_MOL/KG_TEST_PRED",
    "TETRAHYMENA_PYRIFORMIS_IGC50_MOL/L_TEST_PRED",
    "WATER_SOLUBILITY_MOL/L_TEST_PRED",
    "BIOCONCENTRATION_FACTOR_OPERA_PRED",
    "BIODEGRADATION_HALF_LIFE_DAYS_DAYS_OPERA_PRED",
    "OCTANOL_AIR_PARTITION_COEFF_LOGKOA_OPERA_PRED",
    "SOIL_ADSORPTION_COEFFICIENT_KOC_L/KG_OPERA_PRED",
    "OCTANOL_WATER_PARTITION_LOGP_OPERA_PRED",
    "OPERA_PKAA_OPERA_PRED",
    "OPERA_PKAB_OPERA_PRED",
    "EXPOCAST_MEDIAN_EXPOSURE_PREDICTION_MG/KG-BW/DAY",
    "NHANES",
    "TOXCAST_NUMBER_OF_ASSAYS/TOTAL",
    "TOXCAST_PERCENT_ACTIVE",
    "TOXVAL_DETAILS"
  )
}








#' Checked required arg
#'
#' Function that handle missing arguments. It checks if there are required arguments that are missng and
#' print a message. It is supposed to be used inside a function.
#'
#' @param required_arg Vector of required arguments.
#' @param get_arg If TRUE output a list of arguments.
handle_required_args <- function(required_arg, get_arg = FALSE) {

  passed <- as.list(sys.call(-1))[-1]
  passed <- lapply(passed, rlang::eval_tidy, env = rlang::caller_env(n = 2))

  required_arg_missing <- required_arg[!required_arg %in% names(passed)]

  if (length(required_arg_missing) != 0) cli::cli_abort("The argument{?s} {.field {required_arg_missing}} {?is/is/are} required.")

  if (get_arg) return(passed)

}


