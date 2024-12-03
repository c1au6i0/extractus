#' Write Dataframes to Excel
#'
#' This function creates an Excel file with each dataframe in a list as a separate sheet.
#'
#' @param df_list A named list of dataframes to write to the Excel file.
#' @param filename The name of the Excel file to create.
#' @return No return value. The function prints a message indicating the completion of the Excel file writing.
#' @export
#' @examples
#' \donttest{
#' tox_dat <- extr_tox("50-00-0")
#' temp_file <- tempfile(fileext = ".xlsx")
#' write_dataframes_to_excel(tox_dat, filename = temp_file)
#' }
write_dataframes_to_excel <- function(df_list, filename) {
  if (isFALSE(requireNamespace("openxlsx", quietly = TRUE))) {
    cli::cli_abort(message = "{.pkg  openxlsx} not installed. Install it with: `install.packages('openxlsx')`")
  }

  wb <- openxlsx::createWorkbook()

  for (name in names(df_list)) {
    openxlsx::addWorksheet(wb, name)
    openxlsx::writeData(wb, sheet = name, df_list[[name]])
  }

  # Save the workbook
  openxlsx::saveWorkbook(wb, filename, overwrite = TRUE)
  cli::cli_alert_info("Excell file written in {filename}...")
}

#' Verify SSL
#'
#' @param verify_ssl Boolean.
#' @param ... Any other arguments to be supplied to `req_option`
#' @keywords internal
#' @noRd
#' @return Named list.
set_ssl <- function(verify_ssl, ...) {
  libcurl_opt <- list(...)
  if (!verify_ssl) {
    libcurl_opt[["ssl_verifyhost"]] <- 0
    libcurl_opt[["ssl_verifypeer"]] <- 0
  }
  libcurl_opt
}

#' Check the status code of an HTTP response
#'
#' This function checks the status code of an HTTP response and provides
#' appropriate messages based on the status.
#'
#' @param resp An HTTP response object from the httr2 package.
#' @keywords internal
#' @noRd
#' @return This function does not return a value. It is used for its side effects.
check_status_code <- function(resp) {
  status_code <- httr2::resp_status(resp)
  if (!status_code %in% c(200L, 202L)) {
    cli::cli_abort("Request failed with status code: {status_code}")
  } else {
    cli::cli_inform("Request succeeded with status code: {status_code}")
  }
}


#' Check Internet
#'
#' Wrapper around `pingr::is_online` to print message
#' a better message.
#'
#' @param verbose Boolean to display messages.
#' @keywords internal
#' @noRd
check_internet <- function(verbose = TRUE) {
  if (isTRUE(verbose)) {
    cli::cli_alert_info("Checking Internet Connection...")
  }

  if (isFALSE(pingr::is_online())) {
    cli::cli_abort("It seems that you are not connected to internet!")
    out <- FALSE
  } else {
    cli::cli_alert_info("Internet connection OK...")
    out <- TRUE
  }
}

#' Selection of assays of iris

#' @keywords internal
#' @noRd
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


  list(
    ice_carc_woe = ice_carc_woe,
    ice_invivo_acute_tox = ice_invivo_acute_tox,
    ice_invivo_sensitization = ice_invivo_sensitization,
    ice_invivo_irritation = ice_invivo_irritation,
    ice_invivo_endocrine = ice_invivo_endocrine,
    ice_cancer = ice_cancer,
    ice_dart = ice_dart
  )
}
