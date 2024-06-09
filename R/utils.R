#' items_to_down
#'
#' Columns of Main Data of CompTox extracted data. Used in `get_comptox`
#' @seealso [extr_tox()]
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

#' ice_assays
#'
#' Assays of iris used in `extr_tox`.
#' @seealso [extr_tox()]
ice_assays <- function() {

  ice_carc_woe <-
    c(
      "OPP Carcinogenicity",
      "Report on Carcinogens",
      "IRIS Carcinogenicity",
      "IARC Carcinogenicity",
      "IRIS Carcinogenicity"
    )


  ice_invivo_acute_tox <-
    c(
      "Rat Acute Oral Toxicity",
      "Rat Acute Inhalation Toxicity",
      "Rat Acute Dermal Toxicity"
    )


  ice_invivo_sensitization <- c("Human Maximization Test", "Human Repeat Insult Patch Test", "LLNA", "Guinea Pig Maximization/Buehler")

  ice_invivo_irritation <- c(
    "Draize Skin Irritation/Corrosion Test",
    "Draize Eye Irritation/Corrosion Test",
    "Four-hour Human Patch Test"
  )


  ice_invivo_endocrine <- c(
    "Hershberger-Agonist",
    "Hershberger-Antagonist",
    "Uterotrophic-Agonist"
  )

  ice_cancer <- c(
    "In Vitro Genotoxicity",
    "In Vivo Genotoxicity",
    "NTP Carcinogenicity",
    "Two year cancer bioassay"
  )

  ice_dart <- c(
    "Urinalysis", "Microscopic Pathology",
    "Gross Pathology", "Organ Weight", "In Life Observation", "Hematology",
    "Clinical Chemistry", "Cholinesterase", "in vivo", "Offspring Survival Late",
    "Developmental Malformation", "Developmental Landmark", "Reproductive Performance",
    "Offspring Survival Early"
  )


  list(ice_carc_woe = ice_carc_woe,
       ice_invivo_acute_tox = ice_invivo_acute_tox,
       ice_invivo_sensitization = ice_invivo_sensitization,
       ice_invivo_irritation = ice_invivo_irritation,
       ice_invivo_endocrine = ice_invivo_endocrine,
       ice_cancer = ice_cancer,
       ice_dart = ice_dart
       )
}


#' Write Dataframes to Excel
#'
#' This function creates an Excel file with each dataframe in a list as a separate sheet.
#'
#' @param df_list A named list of dataframes to write to the Excel file.
#' @param filename The name of the Excel file to create.
#'
#' @return No return value. The function prints a message indicating the completion of the Excel file writing.
#' @export
#'
#' @examples
#' \dontrun{
#' df1 <- data.frame(a = 1:3, b = letters[1:3])
#' df2 <- data.frame(x = rnorm(5), y = runif(5))
#' write_dataframes_to_excel(list(df1 = df1, df2 = df2), "mydata.xlsx")
#' }
write_dataframes_to_excel <- function(df_list, filename) {
  # Create a new workbook
  wb <- openxlsx::createWorkbook()

  # Add each dataframe as a new sheet
  for (name in names(df_list)) {
    openxlsx::addWorksheet(wb, name)
    openxlsx::writeData(wb, sheet = name, df_list[[name]])
  }

  # Save the workbook
  openxlsx::saveWorkbook(wb, filename, overwrite = TRUE)
  cli::cli_alert_info("Excell file written in {filename}...")

}

#' Check Internet Connection
#'
#' This function checks if the computer is connected to the internet.
#' If not connected, it stops execution with an error message.
#'
#' @return Prints a message indicating whether the computer is connected to the internet.
check_internet <- function() {

  if (!pingr::is_online()) {
    cli::cli_abort("It seems that you are not connected to internet")
  }
}
