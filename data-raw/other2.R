library(httr2)
library(cli)
library(dplyr)
library(readxl)

search_items <- function(search_items, identifier_types = c("chemical_name", "CASRN",
                                                            "INCHIKEY", "dtxsid"),
                         input_type = c("IDENTIFIER", "DTXCID", "INCHIKEY_SKELETON",
                                        "MSREADY_FORMULA", "EXACT_FORMULA", "MASS"),
                         download_items = c("DTXCID", "CASRN", "INCHIKEY", "IUPAC_NAME",
                                            "SMILES", "INCHI_STRING", "MS_READY_SMILES",
                                            "QSAR_READY_SMILES", "MOLECULAR_FORMULA",
                                            "AVERAGE_MASS", "MONOISOTOPIC_MASS", "QC_LEVEL",
                                            "SAFETY_DATA", "EXPOCAST", "DATA_SOURCES",
                                            "TOXVAL_DATA", "NUMBER_OF_PUBMED_ARTICLES",
                                            "PUBCHEM_DATA_SOURCES", "CPDAT_COUNT",
                                            "IRIS_LINK", "PPRTV_LINK", "WIKIPEDIA_ARTICLE",
                                            "QC_NOTES", "ABSTRACT_SHIFTER", "TOXPRINT_FINGERPRINT",
                                            "ACTOR_REPORT", "SYNONYM_IDENTIFIER",
                                            "RELATED_RELATIONSHIP", "ASSOCIATED_TOXCAST_ASSAYS",
                                            "TOXVAL_DETAILS", "CHEMICAL_PROPERTIES_DETAILS",
                                            "BIOCONCENTRATION_FACTOR_TEST_PRED",
                                            "BOILING_POINT_DEGC_TEST_PRED",
                                            "48HR_DAPHNIA_LC50_MOL/L_TEST_PRED",
                                            "DENSITY_G/CM^3_TEST_PRED", "DEVTOX_TEST_PRED",
                                            "96HR_FATHEAD_MINNOW_MOL/L_TEST_PRED",
                                            "FLASH_POINT_DEGC_TEST_PRED", "MELTING_POINT_DEGC_TEST_PRED",
                                            "AMES_MUTAGENICITY_TEST_PRED", "ORAL_RAT_LD50_MOL/KG_TEST_PRED",
                                            "SURFACE_TENSION_DYN/CM_TEST_PRED",
                                            "THERMAL_CONDUCTIVITY_MW/(M*K)_TEST_PRED",
                                            "TETRAHYMENA_PYRIFORMIS_IGC50_MOL/L_TEST_PRED",
                                            "VISCOSITY_CP_CP_TEST_PRED", "VAPOR_PRESSURE_MMHG_TEST_PRED",
                                            "WATER_SOLUBILITY_MOL/L_TEST_PRED",
                                            "ATMOSPHERIC_HYDROXYLATION_RATE_(AOH)_CM3/MOLECULE*SEC_OPERA_PRED",
                                            "BIOCONCENTRATION_FACTOR_OPERA_PRED",
                                            "BIODEGRADATION_HALF_LIFE_DAYS_DAYS_OPERA_PRED",
                                            "BOILING_POINT_DEGC_OPERA_PRED",
                                            "HENRYS_LAW_ATM-M3/MOLE_OPERA_PRED", "OPERA_KM_DAYS_OPERA_PRED",
                                            "OCTANOL_AIR_PARTITION_COEFF_LOGKOA_OPERA_PRED",
                                            "SOIL_ADSORPTION_COEFFICIENT_KOC_L/KG_OPERA_PRED",
                                            "OCTANOL_WATER_PARTITION_LOGP_OPERA_PRED",
                                            "MELTING_POINT_DEGC_OPERA_PRED", "OPERA_PKAA_OPERA_PRED",
                                            "OPERA_PKAB_OPERA_PRED", "VAPOR_PRESSURE_MMHG_OPERA_PRED",
                                            "WATER_SOLUBILITY_MOL/L_OPERA_PRED",
                                            "EXPOCAST_MEDIAN_EXPOSURE_PREDICTION_MG/KG-BW/DAY", "NHANES",
                                            "TOXCAST_NUMBER_OF_ASSAYS/TOTAL", "TOXCAST_PERCENT_ACTIVE"),
                         mass_error = 0, timeout = 300, verify_ssl = getOption("ECOTOXr_verify_ssl"), ...)
{
  if (is.null(verify_ssl)) verify_ssl <- TRUE

  # Capture additional arguments passed to the function
  cfg <- list(...)
  if (!verify_ssl) {
    # Disable SSL verification if specified
    cfg[["ssl_verifyhost"]] <- 0
    cfg[["ssl_verifypeer"]] <- 0
  }

  search_form <- list(
    identifier_types = match.arg(identifier_types, several.ok = TRUE),
    mass_error = mass_error,
    download_items = match.arg(download_items, several.ok = TRUE),
    search_items = paste0(search_items, collapse = "\n"),
    input_type = match.arg(input_type),
    download_type = "EXCEL"
  )

  cli::cli_alert_info("Sending search query...")
  post_result <- httr2::request("https://comptox.epa.gov/dashboard-api/batchsearch/export/?lb2ljny4") |>
    httr2::req_body_json(search_form) |>
    httr2::req_method("POST") |>
    httr2::req_options(!!!cfg) |>
    httr2::req_perform()

  if (!dplyr::between(httr2::resp_status(post_result), 200, 299)) {
    stop(sprintf("Failed to post search query. Http response %s status code %s",
                 httr2::resp_status_desc(post_result), httr2::resp_status(post_result)))
  }

  cli::cli_alert_info("Checking download status...")
  status_url <- paste0("https://comptox.epa.gov/dashboard-api/batchsearch/export/status/",
                       httr2::resp_body_string(post_result))

  max_tries <- timeout
  attempt <- 0
  success <- FALSE

  while (attempt < max_tries && !success) {
    search_status <- httr2::request(status_url) |>
      httr2::req_options(!!!cfg) |>
      httr2::req_perform()

    if (!dplyr::between(httr2::resp_status(search_status), 200, 299)) {
      stop(sprintf("Failed to check download status. Http response %s status code %s",
                   httr2::resp_status_desc(search_status), httr2::resp_status(search_status)))
    }

    status <- httr2::resp_body_string(search_status)
    cli::cli_alert_info("Status check attempt {attempt + 1}/{max_tries}: {status}")

    if (status == "true") {
      success <- TRUE
    } else {
      attempt <- attempt + 1
      Sys.sleep(2)  # Fixed backoff
    }
  }

  if (!success) {
    stop("Did not succeed before timeout, try again or increase the timeout...")
  }

  cli::cli_alert_info("Downloading search result...")
  search_result <- httr2::request(paste0("https://comptox.epa.gov/dashboard-api/batchsearch/export/content/",
                                         httr2::resp_body_string(post_result))) |>
    httr2::req_options(!!!cfg) |>
    httr2::req_perform()

  if (!dplyr::between(httr2::resp_status(search_result), 200, 299)) {
    stop(sprintf("Failed to obtain search result. Http response %s status code %s",
                 httr2::resp_status_desc(search_result), httr2::resp_status(search_result)))
  }

  cli::cli_alert_info("Processing search result...")
  tab_file <- tempfile(fileext = ".xlsx")
  writeBin(search_result$body, tab_file)
  sheet_names <- readxl::excel_sheets(tab_file)
  data_tables <- structure(
    lapply(sheet_names, function(name) {
      readxl::read_excel(tab_file, name, col_names = if (name == "Cover Sheet")
        c("Search property", "Result")
        else TRUE)
    }), names = sheet_names)
  unlink(tab_file)

  cli::cli_alert_success("Search completed successfully.")
  return(data_tables)
}
