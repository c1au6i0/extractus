#' Extract Toxicological Information from Multiple Databases
#'
#' This wrapper function retrieves toxicological information for specified chemicals by calling several external
#' functions to query multiple databases, including PubChem, the Integrated Chemical Environment (ICE), CompTox
#' Chemicals Dashboard, and the Integrated Risk Information System (IRIS).
#'
#' Specifically, this function:
#'   \itemize{
#'     \item Calls \code{\link{extr_monograph}} to return monographs informations from WHO IARC.
#'     \item Calls \code{\link{extr_pubchem_ghs}} to retrieve GHS classification data from PubChem.
#'     \item Calls \code{\link{extr_ice}} to gather assay data from the ICE database.
#'     \item Calls \code{\link{extr_iris}} to retrieve risk assessment information from the IRIS database.
#'     \item Calls \code{\link{extr_comptox}} to retrieve data from the CompTox Chemicals Dashboard.
#'   }
#' @param casrn A character vector of CAS Registry Numbers (CASRN) representing the chemicals of interest.
#' @return A list of data frames containing toxicological information retrieved from each database:
#'   \describe{
#'     \item{who_iarc_monographs}{Lists if any, the WHO IARC monographs related to that chemical.}
#'     \item{ghs_dat}{Toxicity data from PubChem's Globally Harmonized System (GHS) classification.}
#'     \item{ice_dat}{Assay data from the Integrated Chemical Environment (ICE) database.}
#'     \item{iris}{Risk assessment data from the IRIS database.}
#'     \item{iris}{Risk assessment data from the IRIS database.}
#'     \item{comptox_list}{List of dataframe with toxicity information from the CompTox Chemicals Dashboard.}
#'   }
#' @export
#' @examples
#' \donttest{
#' casrn <- c("100-00-5", "107-02-8")
#' extr_tox(casrn)
#' }
extr_tox <- function(casrn) {
  if (missing(casrn)) {
    cli::cli_abort("The argument {.field {casrn}} is required.")
  }


  ghs_dat <- extr_pubchem_ghs(casrn)

  comptox_list <- extr_comptox(casrn)

  ice_dat <- extr_ice(
    casrn = casrn,
    assays = NULL
  )


  iris_filt <- extr_iris(casrn = casrn)

  extracted_monographs <- extr_monograph(ids = casrn, search_type = "casrn", verbose = TRUE)

  list_1 <- list(who_iarc_monographs = extracted_monographs, ghs_dat = ghs_dat, iris = iris_filt, ice = ice_dat)
  out <- c(list_1, comptox_list)
}
