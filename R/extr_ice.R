#' Extract Data from NTP ICE Database
#'
#' The `extr_ice` function sends a POST request to the ICE API to search for information based on specified chemical IDs and assays.
#'
#' @param casrn A character vector specifying the CASRNs for the search.
#' @param assays A character vector specifying the assays to include in the search. Default is NULL,
#'     meaning all assays are included. If you don't know the exact assay name, you can use the
#'     `extr_ice_assay_names()` function to search for assay names that match a pattern you're interested in.
#' @param verify_ssl Boolean to control of SSL should be verified or not.
#' @param ... Any other arguments to be supplied to `req_option` and thus to `libcurl`.
#' @return A data frame containing the extracted data from the ICE API.
#' @seealso
#' \code{\link{extr_ice_assay_names}},
#' \href{https://ice.ntp.niehs.nih.gov/}{NTP ICE database}
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
  cli::cli_alert_info("Sending request to ICE database...")


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


#' Extract Assay Names from the ICE Database
#'
#' This function allows users to search for assay names in the ICE database
#' using a regular expression. If no search pattern is provided (`regex = NULL`),
#' it returns all available assay names.
#'
#' @param regex A character string containing the regular expression to search for,
#' or `NULL` to retrieve all assay names.
#' @return A character vector of matching assay names.
#' @export
#' @examples
#' \donttest{
#' extr_ice_assay_names("OPERA")
#' extr_ice_assay_names(NULL)
#' extr_ice_assay_names("Vivo")
#' }
extr_ice_assay_names <- function(regex = NULL) {
  if (is.null(regex)) {
    cli::cli_alert_info("Returning all available assay names from the ICE database.")
    return(all_ice_assays)
  }

  if (!is.character(regex) || length(regex) != 1) {
    cli::cli_abort("Please provide a single valid regular expression as a character string,
                   or NULL to retrieve all assay names.")
  }

  # Search for matches
  matches <- grep(regex, all_ice_assays, value = TRUE)

  if (length(matches) == 0) {
    cli::cli_warn("No assay names found matching the search pattern {.field regex}.\n
                  Please note that searches are case sensitive.")
  }

  return(matches)
}
