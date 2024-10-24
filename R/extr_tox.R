#' Extract Data from EPA IRIS Database
#'
#' The `extr_iris` function sends a request to the EPA IRIS database to search for information based on a specified keyword and cancer types. It retrieves and parses the HTML content from the response.
#' Note that if `keyword` is not provide all dataset are retrieved.
#'
#' @param casrn A single character string specifying the IUPAC name or the CASRN for the search.
#' @param cancer_types A character vector specifying the types of cancer to include in the search. Must be either "non_cancer" or "cancer".
#' @param verify_ssl Boolean to control of SSL should be verified or not.
#' @param ... Any other arguments to be supplied to `req_option` and thus to `libcurl`.
#'
#' @return A data frame containing the extracted data.
#' @seealso \href{https://cfpub.epa.gov/ncea/iris/search/}{EPA IRIS database}
#' @examples
#' \dontrun{
#' dat <- extr_iris("1332-21-4")
#' }
extr_iris_ <- function(casrn = NULL,
                       cancer_types = c("non_cancer", "cancer"),
                       verify_ssl = FALSE,
                       ...) {
  # Check if online
  check_internet()

  # Construct query parameters
  query_params <- list(
    keyword = casrn,
    cancer_or_no_cancer = cancer_types
  )

  libcurl_opt <- set_ssl(verify_ssl = verify_ssl, other_opt = ...)

  # Perform the request and get a response
  cli::cli_inform("Quering {.field {casrn}} to EPA IRIS database...")
  resp <- tryCatch(
    {
      httr2::request(base_url = "https://cfpub.epa.gov/ncea/iris/search/basic/") |>
        httr2::req_url_query(!!!query_params, .multi = "explode") |>
        httr2::req_options(!!!libcurl_opt) |>
        httr2::req_perform()
    },
    error = function(e) {
      cli::cli_abort("Failed to perform the request: {e$message}")
    }
  )

  check_status_code(resp)

  # Parse the HTML content
  content <- httr2::resp_body_html(resp)

  dat <- tryCatch(
    {
      rvest::html_element(content, "#searchMain , th, td") |>
        rvest::html_table()
    },
    error = function(e) {
      cli::cli_abort("Failed to parse the HTML content: {e$message}")
    }
  )

  dat
}

#' @inherit extr_iris_ title description params return details seealso
#' @export
#' @examples
#' \dontrun{
#' dat <- extr_iris(c("1332-21-4", "50-00-0"))
#' }
extr_iris <- function(casrn = NULL, cancer_types = c("non_cancer", "cancer")) {
  if (!all(cancer_types %in% c("non_cancer", "cancer"))) {
    cli::cli_abort("Cancer types must be either 'non_cancer' or 'cancer'.")
  }

  # Check if online
  check_internet()

  if (length(casrn) > 1) {
    dat <- lapply(casrn, extr_iris_, cancer_types = cancer_types)
    out <- do.call(rbind, dat)
  } else {
    out <- extr_iris_(casrn = casrn, cancer_types = cancer_types)
  }

  out_cl <- out |>
    janitor::clean_names()

  out_cl[out_cl$casrn %in% casrn, ]
}



#' Download and Extract Data from CompTox Chemistry Dashboard
#'
#' This function interacts with the CompTox Chemistry Dashboard to download and extract a wide range of chemical data based on user-defined search criteria. It allows for flexible input types and supports downloading various chemical properties, identifiers, and predictive data.
#' It was inspired by the `ECOTOXr::websearch_comptox` function.
#'
#' @param ids A character vector containing the items to be searched within the CompTox Chemistry Dashboard. These can be chemical names, CAS Registry Numbers (CASRN), InChIKeys, or DSSTox substance identifiers (DTXSID).
#' @param download_items A character vector of items to be downloaded. This includes a comprehensive set of chemical properties, identifiers, predictive data, and other relevant information. By Default, it download all the info
#' \describe{
#'   \item{DTXCID}{The unique identifier for a chemical in the EPA's CompTox Chemicals Dashboard.}
#'   \item{CASRN}{The Chemical Abstracts Service Registry Number, a unique numerical identifier for chemical substances.}
#'   \item{INCHIKEY}{The hashed version of the full International Chemical Identifier (InChI) string.}
#'   \item{IUPAC_NAME}{The International Union of Pure and Applied Chemistry (IUPAC) name of the chemical.}
#'   \item{SMILES}{The Simplified Molecular Input Line Entry System (SMILES) representation of the chemical structure.}
#'   \item{INCHI_STRING}{The full International Chemical Identifier (InChI) string.}
#'   \item{MS_READY_SMILES}{The SMILES representation of the chemical structure, prepared for mass spectrometry analysis.}
#'   \item{QSAR_READY_SMILES}{The SMILES representation of the chemical structure, prepared for quantitative structure-activity relationship (QSAR) modeling.}
#'   \item{MOLECULAR_FORMULA}{The chemical formula representing the number and type of atoms in a molecule.}
#'   \item{AVERAGE_MASS}{The average mass of the molecule, calculated based on the isotopic distribution of the elements.}
#'   \item{MONOISOTOPIC_MASS}{The mass of the molecule calculated using the most abundant isotope of each element.}
#'   \item{QC_LEVEL}{The quality control level of the data.}
#'   \item{SAFETY_DATA}{Safety information related to the chemical.}
#'   \item{EXPOCAST}{Exposure predictions from the EPA's ExpoCast program.}
#'   \item{DATA_SOURCES}{Sources of the data provided.}
#'   \item{TOXVAL_DATA}{Toxicological values related to the chemical.}
#'   \item{NUMBER_OF_PUBMED_ARTICLES}{The number of articles related to the chemical in PubMed.}
#'   \item{PUBCHEM_DATA_SOURCES}{Sources of data from PubChem.}
#'   \item{CPDAT_COUNT}{The number of entries in the Chemical and Product Categories Database (CPDat).}
#'   \item{IRIS_LINK}{Link to the EPA's Integrated Risk Information System (IRIS) entry for the chemical.}
#'   \item{PPRTV_LINK}{Link to the EPA's Provisional Peer-Reviewed Toxicity Values (PPRTV) entry for the chemical.}
#'   \item{WIKIPEDIA_ARTICLE}{Link to the Wikipedia article for the chemical.}
#'   \item{QC_NOTES}{Notes related to the quality control of the data.}
#'   \item{ABSTRACT_SHIFTER}{Information related to the abstract shifter.}
#'   \item{TOXPRINT_FINGERPRINT}{The ToxPrint chemoinformatics fingerprint of the chemical.}
#'   \item{ACTOR_REPORT}{The Aggregated Computational Toxicology Resource (ACTOR) report for the chemical.}
#'   \item{SYNONYM_IDENTIFIER}{Identifiers for synonyms of the chemical.}
#'   \item{RELATED_RELATIONSHIP}{Information on related chemicals.}
#'   \item{ASSOCIATED_TOXCAST_ASSAYS}{Assays associated with the chemical in the ToxCast database.}
#'   \item{TOXVAL_DETAILS}{Details of toxicological values.}
#'   \item{CHEMICAL_PROPERTIES_DETAILS}{Details of the chemical properties.}
#'   \item{BIOCONCENTRATION_FACTOR_TEST_PRED}{Predicted bioconcentration factor from tests.}
#'   \item{BOILING_POINT_DEGC_TEST_PRED}{Predicted boiling point in degrees Celsius from tests.}
#'   \item{48HR_DAPHNIA_LC50_MOL/L_TEST_PRED}{Predicted 48-hour LC50 for Daphnia in mol/L from tests.}
#'   \item{DENSITY_G/CM^3_TEST_PRED}{Predicted density in g/cm³ from tests.}
#'   \item{DEVTOX_TEST_PRED}{Predicted developmental toxicity from tests.}
#'   \item{96HR_FATHEAD_MINNOW_MOL/L_TEST_PRED}{Predicted 96-hour LC50 for fathead minnow in mol/L from tests.}
#'   \item{FLASH_POINT_DEGC_TEST_PRED}{Predicted flash point in degrees Celsius from tests.}
#'   \item{MELTING_POINT_DEGC_TEST_PRED}{Predicted melting point in degrees Celsius from tests.}
#'   \item{AMES_MUTAGENICITY_TEST_PRED}{Predicted Ames mutagenicity from tests.}
#'   \item{ORAL_RAT_LD50_MOL/KG_TEST_PRED}{Predicted oral LD50 for rats in mol/kg from tests.}
#'   \item{SURFACE_TENSION_DYN/CM_TEST_PRED}{Predicted surface tension in dyn/cm from tests.}
#'   \item{THERMAL_CONDUCTIVITY_MW_M×K_TEST_PRED}{Predicted thermal conductivity in mW/m×K from tests.}
#'   \item{TETRAHYMENA_PYRIFORMIS_IGC50_MOL/L_TEST_PRED}{Predicted IGC50 for Tetrahymena pyriformis in mol/L from tests.}
#'   \item{VISCOSITY_CP_CP_TEST_PRED}{Predicted viscosity in cP from tests.}
#'   \item{VAPOR_PRESSURE_MMHG_TEST_PRED}{Predicted vapor pressure in mmHg from tests.}
#'   \item{WATER_SOLUBILITY_MOL/L_TEST_PRED}{Predicted water solubility in mol/L from tests.}
#'   \item{ATMOSPHERIC_HYDROXYLATION_RATE_\(AOH\)_CM3/MOLECULE\*SEC_OPERA_PRED}{Predicted atmospheric hydroxylation rate in cm³/molecule\*sec from OPERA.}
#'   \item{BIOCONCENTRATION_FACTOR_OPERA_PRED}{Predicted bioconcentration factor from OPERA.}
#'   \item{BIODEGRADATION_HALF_LIFE_DAYS_DAYS_OPERA_PRED}{Predicted biodegradation half-life in days from OPERA.}
#'   \item{BOILING_POINT_DEGC_OPERA_PRED}{Predicted boiling point in degrees Celsius from OPERA.}
#'   \item{HENRYS_LAW_ATM-M3/MOLE_OPERA_PRED}{Predicted Henry's law constant in atm-m³/mole from OPERA.}
#'   \item{OPERA_KM_DAYS_OPERA_PRED}{Predicted Km in days from OPERA.}
#'   \item{OCTANOL_AIR_PARTITION_COEFF_LOGKOA_OPERA_PRED}{Predicted octanol-air partition coefficient (log Koa) from OPERA.}
#'   \item{SOIL_ADSORPTION_COEFFICIENT_KOC_L/KG_OPERA_PRED}{Predicted soil adsorption coefficient (Koc) in L/kg from OPERA.}
#'   \item{OCTANOL_WATER_PARTITION_LOGP_OPERA_PRED}{Predicted octanol-water partition coefficient (log P) from OPERA.}
#'   \item{MELTING_POINT_DEGC_OPERA_PRED}{Predicted melting point in degrees Celsius from OPERA.}
#'   \item{OPERA_PKAA_OPERA_PRED}{Predicted pKa (acidic) from OPERA.}
#'   \item{OPERA_PKAB_OPERA_PRED}{Predicted pKa (basic) from OPERA.}
#'   \item{VAPOR_PRESSURE_MMHG_OPERA_PRED}{Predicted vapor pressure in mmHg from OPERA.}
#'   \item{WATER_SOLUBILITY_MOL/L_OPERA_PRED}{Predicted water solubility in mol/L from OPERA.}
#'   \item{EXPOCAST_MEDIAN_EXPOSURE_PREDICTION_MG/KG-BW/DAY}{Predicted median exposure from ExpoCast in mg/kg-bw/day.}
#'   \item{NHANES}{National Health and Nutrition Examination Survey data.}
#'   \item{TOXCAST_NUMBER_OF_ASSAYS/TOTAL}{Number of assays in ToxCast.}
#'   \item{TOXCAST_PERCENT_ACTIVE}{Percentage of active assays in ToxCast.}
#' }
#' @param mass_error Numeric value indicating the mass error tolerance for searches involving mass data. Default is `0`.
#' @param timeout Numeric value specifying the timeout duration in seconds. Default is `300`.
#' @param verify_ssl Logical value indicating whether SSL certificates should be verified. Default is `FALSE`.
#' @param ... Additional arguments passed to `httr2::req_options()`.
#' @return A cleaned data frame containing the requested data from CompTox.
#' @examples
#' \dontrun{
#' # Example usage of the function:
#' extr_comptox(ids = c("Aspirin", "50-00-0"))
#' }
#' @export
extr_comptox <- function(ids,
                         download_items = c(
                           "DTXCID",
                           "CASRN",
                           "INCHIKEY",
                           "IUPAC_NAME",
                           "SMILES",
                           "INCHI_STRING",
                           "MS_READY_SMILES",
                           "QSAR_READY_SMILES",
                           "MOLECULAR_FORMULA",
                           "AVERAGE_MASS",
                           "MONOISOTOPIC_MASS",
                           "QC_LEVEL",
                           "SAFETY_DATA",
                           "EXPOCAST",
                           "DATA_SOURCES",
                           "TOXVAL_DATA",
                           "NUMBER_OF_PUBMED_ARTICLES",
                           "PUBCHEM_DATA_SOURCES",
                           "CPDAT_COUNT",
                           "IRIS_LINK",
                           "PPRTV_LINK",
                           "WIKIPEDIA_ARTICLE",
                           "QC_NOTES",
                           "ABSTRACT_SHIFTER",
                           "TOXPRINT_FINGERPRINT",
                           "ACTOR_REPORT",
                           "SYNONYM_IDENTIFIER",
                           "RELATED_RELATIONSHIP",
                           "ASSOCIATED_TOXCAST_ASSAYS",
                           "TOXVAL_DETAILS",
                           "CHEMICAL_PROPERTIES_DETAILS",
                           "BIOCONCENTRATION_FACTOR_TEST_PRED",
                           "BOILING_POINT_DEGC_TEST_PRED",
                           "48HR_DAPHNIA_LC50_MOL/L_TEST_PRED",
                           "DENSITY_G/CM^3_TEST_PRED",
                           "DEVTOX_TEST_PRED",
                           "96HR_FATHEAD_MINNOW_MOL/L_TEST_PRED",
                           "FLASH_POINT_DEGC_TEST_PRED",
                           "MELTING_POINT_DEGC_TEST_PRED",
                           "AMES_MUTAGENICITY_TEST_PRED",
                           "ORAL_RAT_LD50_MOL/KG_TEST_PRED",
                           "SURFACE_TENSION_DYN/CM_TEST_PRED",
                           "THERMAL_CONDUCTIVITY_MW/(M*K)_TEST_PRED",
                           "TETRAHYMENA_PYRIFORMIS_IGC50_MOL/L_TEST_PRED",
                           "VISCOSITY_CP_CP_TEST_PRED",
                           "VAPOR_PRESSURE_MMHG_TEST_PRED",
                           "WATER_SOLUBILITY_MOL/L_TEST_PRED",
                           "ATMOSPHERIC_HYDROXYLATION_RATE_(AOH)_CM3/MOLECULE*SEC_OPERA_PRED",
                           "BIOCONCENTRATION_FACTOR_OPERA_PRED",
                           "BIODEGRADATION_HALF_LIFE_DAYS_DAYS_OPERA_PRED",
                           "BOILING_POINT_DEGC_OPERA_PRED",
                           "HENRYS_LAW_ATM-M3/MOLE_OPERA_PRED",
                           "OPERA_KM_DAYS_OPERA_PRED",
                           "OCTANOL_AIR_PARTITION_COEFF_LOGKOA_OPERA_PRED",
                           "SOIL_ADSORPTION_COEFFICIENT_KOC_L/KG_OPERA_PRED",
                           "OCTANOL_WATER_PARTITION_LOGP_OPERA_PRED",
                           "MELTING_POINT_DEGC_OPERA_PRED",
                           "OPERA_PKAA_OPERA_PRED",
                           "OPERA_PKAB_OPERA_PRED",
                           "VAPOR_PRESSURE_MMHG_OPERA_PRED",
                           "WATER_SOLUBILITY_MOL/L_OPERA_PRED",
                           "EXPOCAST_MEDIAN_EXPOSURE_PREDICTION_MG/KG-BW/DAY",
                           "NHANES",
                           "TOXCAST_NUMBER_OF_ASSAYS/TOTAL",
                           "TOXCAST_PERCENT_ACTIVE"
                         ),
                         mass_error = 0,
                         timeout = 300,
                         verify_ssl = FALSE,
                         ...) {
  if (missing(ids)) {
    cli::cli_abort("The argument {.field ids} is required.")
  }

  # Check if online
  check_internet()

  cli::cli_alert_info("Getting CompTox info...")

  libcurl_opt <- set_ssl(verify_ssl = verify_ssl, other_opt = ...)

  identifier_types <- c("chemical_name", "CASRN", "INCHIKEY", "dtxsid")
  input_type <- "IDENTIFIER"

  params <- list(
    identifierTypes = identifier_types,
    massError = mass_error,
    downloadItems = download_items,
    searchItems = paste0(ids, collapse = "\n"),
    inputType = input_type,
    downloadType = "CSV"
  )

  base_url <- "https://comptox.epa.gov/dashboard-api/batchsearch/export/?lb2ljny4"

  cli::cli_alert_info("Sending request to CompTox...")

  post_result <- tryCatch(
    {
      httr2::request(base_url) |>
        httr2::req_retry(max_tries = 5, max_seconds = 10) |>
        httr2::req_body_json(params) |>
        httr2::req_options(!!!libcurl_opt) |>
        httr2::req_method("POST") |>
        httr2::req_perform()
    },
    error = function(e) {
      cli::cli_abort("Failed to perform the request: {e$message}")
    }
  )


  check_status_code(post_result)

  base_url_down <- "https://comptox.epa.gov/dashboard-api/batchsearch/export/content/"
  response_body <- httr2::resp_body_string(post_result)

  cli::cli_alert_info("Getting info from CompTox...")

  resp <- tryCatch(
    {
      httr2::request(paste0(base_url_down, response_body)) |>
        httr2::req_options(!!!libcurl_opt) |>
        httr2::req_perform()
    },
    error = function(e) {
      cli::cli_abort("Failed to perform the request: {e$message}")
    }
  )


  check_status_code(resp)

  csv_file <- tempfile(fileext = "csv")

  resp |>
    httr2::resp_body_raw() |>
    writeBin(csv_file)

  out <- utils::read.csv(csv_file) |>
    janitor::clean_names()

  unlink(csv_file)

  out
}



#' extr_ghs_pubchem
#'
#' @param casrn Character vector of carn.
#'
#' @return Dataframe of GHS info.
#' @export
extr_ghs_pubchem <- function(casrn) {
  if (missing(casrn)) {
    cli::cli_abort("The argument {.field {casrn}} is required.")
  }

  # Check if online

  cli::cli_alert_info("Getting PubChem IDS...")
  dat_cid <- webchem::get_cid(casrn, match = "first", verbose = TRUE)
  cat("\n")


  if (all(is.na(dat_cid$cid))) {
    na_matrix <- matrix(NA, nrow = length(casrn), ncol = 6)
    out_df <- as.data.frame(na_matrix)
    colnames(out_df) <- c("cid", "casrn", "name", "GHS", "source_name", "source_id")

    out_df$casrn <- casrn
  } else {
    names(dat_cid)[1] <- "casrn"
    dat_cid <- dat_cid[!is.na(dat_cid$cid), ]

    cli::cli_alert_info("Getting GHS from PubChem...")

    dat <- webchem::pc_sect(dat_cid$cid, verbose = TRUE, section = "GHS Classification") |>
      janitor::clean_names()
    cat("\n")

    dat_f <- dat[dat$result != "          ", ]

    names(dat_f)[3] <- "GHS"
    out_df <- merge(dat_cid, dat_f, by = "cid")
  }

  out_df
}


#' Extract Data from ICE Database
#'
#' The `extr_ice` function sends a POST request to the ICE API to search for information based on specified chemical IDs and assays.
#'
#' @param casrn A character vector specifying the chemical IDs (CASRNs) for the search.
#' @param assays A character vector specifying the assays to include in the search. Default is NULL, meaning all assays are included.
#' @param verify_ssl Boolean to control of SSL should be verified or not.
#' @param ... Any other arguments to be supplied to `req_option` and thus to `libcurl`.
#'
#' @return A data frame containing the extracted data from the ICE API.
#' @export
#'
#' @examples
#' \dontrun{
#' dat <- extr_ice(c("50-00-0"))
#' }
extr_ice <- function(casrn, assays = NULL, verify_ssl = FALSE, ...) {
  if (missing(casrn)) {
    cli::cli_abort("The argument {.field {casrn}} is required.")
  }

  # Check if online
  check_internet()

  # Perform the request and get a response
  cli::cli_inform("Sending request to ICE database...")


  libcurl_opt <- set_ssl(verify_ssl = verify_ssl, other_opt = ...)



  resp <- tryCatch(
    {
      httr2::request("https://ice.ntp.niehs.nih.gov/api/v1/search") |>
        httr2::req_body_json(list(chemids = casrn, assays = assays), auto_unbox = FALSE) |>
        httr2::req_options(!!!libcurl_opt) |>
        httr2::req_perform()
    },
    error = function(e) {
      cli::cli_abort("Failed to perform the request: {e$message}")
    }
  )

  check_status_code(resp)

  # This is used in case no results are retrieved in next chunk
  col_names <- c(
    "assay", "endpoint", "substanceType", "casrn", "qsarReadyId",
    "value", "unit", "species", "receptorSpecies", "route", "sex",
    "strain", "lifeStage", "tissue", "lesion", "location", "assaySource",
    "inVitroAssayFormat", "reference", "referenceUrl", "dtxsid",
    "substanceName", "pubMedId"
  )

  out <- stats::setNames(data.frame(matrix(ncol = length(col_names), nrow = length(casrn))), col_names)

  out$casrn <- casrn

  # Parse the JSON content
  content <- tryCatch(
    {
      content <- httr2::resp_body_json(resp)
      content
    },
    error = function(e) {
      if (grepl("Unexpected content type \"text/plain\"", e$message)) {
        cli::cli_warn("It seems that the ids were not found in ICE: {e$message}")
        NULL # Or another suitable value
      } else {
        cli::cli_abort("An unexpected error occurred: {e$message}")
      }
    }
  )

  # if nothing is retrieved
  if (is.null(content)) {
    dat <- out
  } else {
    # Extract and combine data from the response
    dat <- tryCatch(
      {
        do.call(rbind, content$endPoints) |>
          as.data.frame()
      },
      error = function(e) {
        cli::cli_abort("Failed to parse the JSON content: {e$message}")
      }
    )
  }

  dat
}


#' extr_tox
#'
#' Extract toxicological information from PubChem, ICE, Comptox, IRIS.
#'
#' @param casrn A vector of CASRN.
#'
#' @return List of dataframes.
#' @export
extr_tox <- function(casrn) {
  if (missing(casrn)) {
    cli::cli_abort("The argument {.field {casrn}} is required.")
  }


  ghs_dat <- extr_ghs_pubchem(casrn)

  comptox_list <- extr_comptox(casrn)

  ice_dat <- extr_ice(
    casrn = casrn,
    assays = NULL
  )

  # assays_to_filt <- ice_assays()
  # ice_dat_list <- lapply(assays_to_filt, function(x) ice_dat[ice_dat$assay %in% x, ])
  # names(ice_dat_list) <- names(assays_to_filt)


  iris_filt <- extr_iris(keyword = casrn)

  list(ghs_dat = ghs_dat, iris = iris_filt, comptox = comptox_list, ice = ice_dat)

}
