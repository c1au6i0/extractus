#' Extract Data from EPA IRIS Database
#'
#' The `extr_iris` function sends a request to the EPA IRIS database to search for information based on a specified keywords and cancer types. It retrieves and parses the HTML content from the response.
#' Note that if `keywords` is not provide all dataset are retrieved.
#'
#' @param casrn A single character string specifying the CASRN for the search.
#' @param cancer_types A character vector specifying the types of cancer to include in the search. Must be either "non_cancer" or "cancer".
#' @return A data frame containing the extracted data.
#' @seealso \href{https://cfpub.epa.gov/ncea/iris/search/}{EPA IRIS database}
#' @export
#' @examples
#' \donttest{
#' extr_iris(c("1332-21-4", "50-00-0"))
#' }
extr_iris <- function(casrn = NULL, cancer_types = c("non_cancer", "cancer")) {
  if (!all(cancer_types %in% c("non_cancer", "cancer"))) {
    cli::cli_abort("Cancer types must be either 'non_cancer' or 'cancer'.")
  }

  # Check if online
  base_url <- "https://cfpub.epa.gov/ncea/iris/search/basic/"
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

#' @inherit extr_iris title description params return seealso
#' @param verify_ssl Boolean to control of SSL should be verified or not.
#' @param ... Any other arguments to be supplied to `req_option` and thus to `libcurl`.
#' @noRd
#' @keywords internal
extr_iris_ <- function(casrn = NULL,
                       cancer_types = c("non_cancer", "cancer"),
                       verify_ssl = FALSE,
                       ...) {
  # Check if online
  base_url <- "https://cfpub.epa.gov/ncea/iris/search/basic/"

  # Construct query parameters
  query_params <- list(
    keywords = casrn,
    cancer_or_no_cancer = cancer_types
  )

  libcurl_opt <- set_ssl(verify_ssl = verify_ssl, other_opt = ...)

  error_result <- NULL

  cli::cli_inform("Quering {.field {casrn}} to EPA IRIS database...")
  resp <- tryCatch(
    {
      httr2::request(base_url = base_url) |>
        httr2::req_retry(max_tries = 2, backoff = ~3) |>
        httr2::req_url_query(!!!query_params, .multi = "explode") |>
        httr2::req_options(!!!libcurl_opt) |>
        httr2::req_perform()
    },
    error = function(e) {
      error_result <<- e
      NULL
    }
  )

  msg <- "Failed to perform the request: {conditionMessage(error_result)}"

  if (!is.null(error_result)) {
    if (grepl("unsafe legacy renegotiation disabled", conditionMessage(error_result))) {
      msg <- c(msg, "", cli::style_italic("!If you are using openssl, you might need to downgrade to curl v7.78.0, openssl v1.1.1!"))
    }
    cli::cli_abort(msg)
  }

  check_status_code(resp)

  # Parse the HTML content
  content <- httr2::resp_body_html(resp)

  dat <- tryCatch(
    {
      rvest::html_element(content, "#searchMain , th, td") |>
        rvest::html_table()
    },
    error = function(e) {
      cli::cli_abort("Failed to parse the HTML content: {conditionMessage(e)}")
    }
  )

  dat
}


#' Extract Data from NTP ICE Database
#'
#' The `extr_ice` function sends a POST request to the ICE API to search for information based on specified chemical IDs and assays.
#'
#' @param casrn A character vector specifying the CASRNs for the search.
#' @param assays A character vector specifying the assays to include in the search. Default is NULL, meaning all assays are included.
#' @param verify_ssl Boolean to control of SSL should be verified or not.
#' @param ... Any other arguments to be supplied to `req_option` and thus to `libcurl`.
#' @return A data frame containing the extracted data from the ICE API.
#' @seealso \href{https://ice.ntp.niehs.nih.gov/}{NTP ICE database}
#' @export
#' @examples
#' \donttest{
#' extr_ice(c("50-00-0"))
#' }
extr_ice <- function(casrn, assays = NULL, verify_ssl = FALSE, ...) {
  if (missing(casrn)) {
    cli::cli_abort("The argument {.field {casrn}} is required.")
  }

  # Check if online
  base_url <- "https://ice.ntp.niehs.nih.gov/api/v1/search"
  # check_internet()
  # Unfortunatelly this would fail see #7
  check_internet()

  # Perform the request and get a response
  cli::cli_inform("Sending request to ICE database...")


  libcurl_opt <- set_ssl(verify_ssl = verify_ssl, other_opt = ...)



  resp <- tryCatch(
    {
      httr2::request(base_url) |>
        httr2::req_retry(max_tries = 2, backoff = ~3) |>
        httr2::req_body_json(list(chemids = casrn, assays = assays), auto_unbox = FALSE) |>
        httr2::req_options(!!!libcurl_opt) |>
        httr2::req_perform()
    },
    error = function(e) {
      cli::cli_abort("Failed to perform the request: {conditionMessage(e)}")
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
        cli::cli_warn("It seems that the ids were not found in ICE: {conditionMessage(e)}")
        NULL # Or another suitable value
      } else {
        cli::cli_abort("An unexpected error occurred: {conditionMessage(e)}")
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
        cli::cli_abort("Failed to parse the JSON content: {conditionMessage(e)}")
      }
    )
  }
  data.frame(lapply(dat, unlist))
}


#' Extract Toxicological Information from Multiple Databases
#'
#' This wrapper function retrieves toxicological information for specified chemicals by calling several external
#' functions to query multiple databases, including PubChem, the Integrated Chemical Environment (ICE), CompTox
#' Chemicals Dashboard, and the Integrated Risk Information System (IRIS).
#'
#' Specifically, this function:
#'   \itemize{
#'     \item Calls \code{\link{extr_pubchem_ghs}} to retrieve GHS classification data from PubChem.
#'     \item Calls \code{\link{extr_comptox}} to retrieve data from the CompTox Chemicals Dashboard.
#'     \item Calls \code{\link{extr_ice}} to gather assay data from the ICE database.
#'     \item Calls \code{\link{extr_iris}} to retrieve risk assessment information from the IRIS database.
#'   }
#' @param casrn A character vector of CAS Registry Numbers (CASRN) representing the chemicals of interest.
#' @return A list of data frames containing toxicological information retrieved from each database:
#'   \describe{
#'     \item{ghs_dat}{Toxicity data from PubChem's Globally Harmonized System (GHS) classification.}
#'     \item{comptox_list}{List of toxicity information from the CompTox Chemicals Dashboard.}
#'     \item{ice_dat}{Assay data from the Integrated Chemical Environment (ICE) database.}
#'     \item{iris}{Risk assessment data from the IRIS database.}
#'   }
#' @export
#' @examples
#' \donttest{
#' casrn <- c("50-00-0", "107-02-8")
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

  list_1 <- list(ghs_dat = ghs_dat, iris = iris_filt, ice = ice_dat)
  out <- c(list_1, comptox_list)
}
