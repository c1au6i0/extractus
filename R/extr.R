#' Extract Data from EPA IRIS Database
#'
#' @description
#' The `extr_iris` function sends a request to the EPA IRIS database to search for information based on a specified keyword and cancer types. It retrieves and parses the HTML content from the response.
#' Note that if `keyword` is not provide all dataset is retrieved.
#'
#' @param keyword A single character string specifying the IUPAC name or the CASRN for the search.
#' @param cancer_types A character vector specifying the types of cancer to include in the search. Must be either "non_cancer" or "cancer".
#'
#' @return A data frame containing the extracted data.
#' @examples
#' \dontrun{
#' dat <- extr_iris("acephate")
#' }
extr_iris_ <- function(keyword = NULL, cancer_types = c("non_cancer", "cancer")) {

  # Construct query parameters
  query_params <- list(
    keyword = keyword,
    cancer_or_no_cancer = cancer_types
  )

  # Perform the request and get a response
  cli::cli_inform("Quering {.field {keyword}} to EPA IRIS database...")


  resp <- tryCatch({
    httr2::request(base_url = "https://cfpub.epa.gov/ncea/iris/search/basic/") |>
      httr2::req_url_query(!!!query_params, .multi = "explode") |>
      httr2::req_perform()
  }, error = function(e) {
    cli::cli_abort("Failed to perform the request: {e$message}")
  })

  # Check the status code
  status_code <- httr2::resp_status(resp)
  if (status_code != 200L) {
    cli::cli_abort("Request failed with status code: {status_code}")
  }

  # Parse the HTML content
  content <- httr2::resp_body_html(resp)


  dat <- tryCatch({
    rvest::html_element(content, "#searchMain , th, td") |>
      rvest::html_table()
  }, error = function(e) {
    cli::cli_abort("Failed to parse the HTML content: {e$message}")
  })

  dat
}

#' @inherit extr_iris title description params return details
#' @export
#' @examples
#' \dontrun{
#' dat <- extr_iris("glyphosate")
#' dat <- extr_iris(c("glyphosate", "50-00-0"))
#' }
extr_iris <- function(keyword = NULL, cancer_types = c("non_cancer", "cancer")) {

  if (!all(cancer_types %in% c("non_cancer", "cancer"))) {
    cli::cli_abort("Cancer types must be either 'non_cancer' or 'cancer'.")
  }

  if(length(keyword) > 1) {

    dat <- lapply(keyword, extr_iris_, cancer_types = cancer_types)
    out <- do.call(rbind, dat)
  } else {

    out <- extr_iris_(keyword = keyword, cancer_types = cancer_types)
  }

  out |>
    janitor::clean_names()

}



#' extr_comptox
#'
#' @param ids A vector of characters where each element is a substance descriptor you wish to query.
#' @param ... Any other argument of `ECOTOXr::websearch_comptox`.
#'
#' @return List of data.frames.
extr_comptox <- function(ids, ...) {
  cli::cli_alert_info("Getting CompTox info.")
  dat <- ECOTOXr::websearch_comptox(
    searchItems = ids,
    downloadItems = items_to_down(),
    ...
  )
  cat("\n")
  list(opera_pred = dat$`Main Data`, tox_val = dat$`Toxval Details`)
}



#' extr_ghs_pubchem
#'
#' @param casrn Character vector of carn.
#'
#' @return Dataframe of GHS info.
#' @export
extr_ghs_pubchem <- function(casrn) {

  cli::cli_alert_info("Getting PubChem IDS...")
  dat_cid <-  webchem::get_cid(casrn, from = "cas", match = "first", verbose = TRUE)
  cat("\n")

  names(dat_cid)[1] <- "casrn"
  dat_cid <- dat_cid[!is.na(dat_cid$cid), ]


  cli::cli_alert_info("Getting GHS from PubChem...")
  dat <- webchem::pc_sect(dat_cid$cid, verbose = TRUE, section = "GHS Classification") |>
    janitor::clean_names()
  cat("\n")

  dat_f<- dat[dat$result != "          ", ]

  names(dat_f)[3] <- "GHS"
  merge(dat_cid, dat_f, by = "cid")

}


#' extr_ice
#'
#' Extra info from the Integrated Chemical Environment using ICE REST API
#'
#' @param ids Vector of chemical ids.
#' @param assays Vector of assays to extra info of.
#'
#' @return A dataframe.
extr_ice <- function(ids, assays = NULL) {

  cli::cli_alert_info("Getting info from ICE...")
  cat("\n")


  ids_string <- paste(shQuote(ids, type = "cmd"), collapse = ", ")


  assays_string <- paste(shQuote(assays, type = "cmd"), collapse = ", ")


  body_content <- paste0('{"chemids": [', ids_string, '], "assays":[', assays_string, "]}", collapse = "")
  results <- httr::POST("https://ice.ntp.niehs.nih.gov/api/v1/search", httr::content_type_json(), body = body_content)

  json_text <- httr::content(results, "text", encoding = "UTF-8")
  json_results <- jsonlite::fromJSON(json_text)
  json_results$endPoints

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
    ids = casrn,
    assays = NULL
  )

  assays_to_filt <- ice_assays()
  ice_dat_list <- lapply(assays_to_filt, function(x) ice_dat[ice_dat$assay %in% x, ])
  names(ice_dat_list) <- names(assays_to_filt)

  iris_filt <- extr_iris(keyword = casrn)


  c(list(ghs_dat =  ghs_dat, iris = iris_filt), comptox_list, ice_dat_list)
}

