#' Extract Data from EPA IRIS Database
#'
#' The `extr_iris` function sends a request to the EPA IRIS database to search for information based on a specified keyword and cancer types. It retrieves and parses the HTML content from the response.
#' Note that if `keyword` is not provide all dataset is retrieved.
#'
#' @param keyword A single character string specifying the IUPAC name or the CASRN for the search.
#' @param cancer_types A character vector specifying the types of cancer to include in the search. Must be either "non_cancer" or "cancer".
#' @param verify_ssl Boolean to control of SSL should be verified or not.
#' @param ... Any other arguments to be supplied to `req_option` and thus to `libcurl`.
#'
#' @return A data frame containing the extracted data.
#' @seealso \href{https://cfpub.epa.gov/ncea/iris/search/}{EPA IRIS database}
#' @examples
#' \dontrun{
#' dat <- extr_iris("acephate")
#' }
extr_iris_ <- function(keyword = NULL,
                       cancer_types = c("non_cancer", "cancer"),
                       verify_ssl = FALSE,
                       ...) {

  # Check if online
  check_internet()

  # Construct query parameters
  query_params <- list(
    keyword = keyword,
    cancer_or_no_cancer = cancer_types
  )

  libcurl_opt <- set_ssl(verify_ssl = verify_ssl, other_opt = ...)

  # Perform the request and get a response
  cli::cli_inform("Quering {.field {keyword}} to EPA IRIS database...")
  resp <- tryCatch({
      httr2::request(base_url = "https://cfpub.epa.gov/ncea/iris/search/basic/") |>
      httr2::req_url_query(!!!query_params, .multi = "explode") |>
      httr2::req_options(!!!libcurl_opt) |>
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

#' @inherit extr_iris_ title description params return details seealso
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

  # Check if online
  check_internet()

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
#'ama
#' @return List of data.frames.
extr_comptox <- function(ids, ...) {

  if (missing(ids)) {
    cli::cli_abort("The argument {.field {casrn}} is required.")
  }

  # Check if online
  check_internet()

  cli::cli_alert_info("Getting CompTox info.")
  dat <- ECOTOXr::websearch_comptox(
    searchItems = ids,
    downloadItems = items_to_down(),
    verify_ssl = FALSE,
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

  if (missing(casrn)) {
    cli::cli_abort("The argument {.field {casrn}} is required.")
  }

  # Check if online

  cli::cli_alert_info("Getting PubChem IDS...")
  dat_cid <-  webchem::get_cid(casrn, from = "cas", match = "first", verbose = TRUE)
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

  dat_f<- dat[dat$result != "          ", ]

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



  resp <- tryCatch({
      httr2::request("https://ice.ntp.niehs.nih.gov/api/v1/search") |>
      httr2::req_body_json(list(chemids = casrn, assays = assays), auto_unbox = FALSE) |>
      httr2::req_options(!!!libcurl_opt) |>
      httr2::req_perform()
  }, error = function(e) {
    cli::cli_abort("Failed to perform the request: {e$message}")
  })


  # Check the status code
  status_code <- httr2::resp_status(resp)
  if (status_code != 200L) {
    cli::cli_abort("Request failed with status code: {status_code}")
  } else {
    cli::cli_inform("Request succeeded with status code: {status_code}")
  }


  # Parse the JSON content
  content <- tryCatch(
    {
      content <- httr2::resp_body_json(resp)
      content
    },
    error = function(e) {
      if (grepl("Unexpected content type \"text/plain\"", e$message)) {
        cli::cli_warn("It seems that the ids were not found in ICE: {e$message}")
        NULL  # Or another suitable value
      } else {
        cli::cli_abort("An unexpected error occurred: {e$message}")
      }
    }
  )

  # Extract and combine data from the response
  dat <- tryCatch({
    do.call(rbind, content$endPoints) |>
      as.data.frame()
  }, error = function(e) {
    cli::cli_abort("Failed to parse the JSON content: {e$message}")
  })

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

  assays_to_filt <- ice_assays()
  ice_dat_list <- lapply(assays_to_filt, function(x) ice_dat[ice_dat$assay %in% x, ])
  names(ice_dat_list) <- names(assays_to_filt)


  iris_filt <- extr_iris(keyword = casrn)

  c(list(ghs_dat =  ghs_dat, iris = iris_filt), comptox_list, ice_dat_list)
}

#' Extract Data from the CTD API
#'
#' This function queries the Comparative Toxicogenomics Database API to retrieve data related to chemicals, diseases, genes, or other categories.
#'
#' @param input_terms A character vector of input terms such as CAS numbers or IUPAC names.
#' @param category A string specifying the category of data to query. Valid options are "all", "chem", "disease", "gene", "go", "pathway", "reference", and "taxon". Default is "chem".
#' @param report_type A string specifying the type of report to return. Default is "genes_curated". Valid options include:
#'   \describe{
#'     \item{"cgixns"}{Curated chemical-gene interactions. Requires at least one \code{action_types} parameter.}
#'     \item{"chems"}{All chemical associations.}
#'     \item{"chems_curated"}{Curated chemical associations.}
#'     \item{"chems_inferred"}{Inferred chemical associations.}
#'     \item{"genes"}{All gene associations.}
#'     \item{"genes_curated"}{Curated gene associations.}
#'     \item{"genes_inferred"}{Inferred gene associations.}
#'     \item{"diseases"}{All disease associations.}
#'     \item{"diseases_curated"}{Curated disease associations.}
#'     \item{"diseases_inferred"}{Inferred disease associations.}
#'     \item{"pathways_curated"}{Curated pathway associations.}
#'     \item{"pathways_inferred"}{Inferred pathway associations.}
#'     \item{"pathways_enriched"}{Enriched pathway associations.}
#'     \item{"phenotypes_curated"}{Curated phenotype associations.}
#'     \item{"phenotypes_inferred"}{Inferred phenotype associations.}
#'     \item{"go"}{All Gene Ontology (GO) associations. Requires at least one \code{ontology} parameter.}
#'     \item{"go_enriched"}{Enriched GO associations. Requires at least one \code{ontology} parameter.}
#'   }
#' @param input_term_search_type A string specifying the search method to use. Options are "hierarchicalAssociations" or "directAssociations". Default is "directAssociations".
#' @param action_types An optional character vector specifying one or more interaction types for filtering results. Default is NULL.
#' @param ontology An optional character vector specifying one or more ontologies for filtering GO reports. Default is NULL.
#'
#' @return A data frame containing the queried data in CSV format.
#'
#' @references
#' - Comparative Toxicogenomics Database: \url{http://ctdbase.org}
#' - Davis, A. P., Grondin, C. J., Johnson, R. J., Sciaky, D., McMorran, R., Wiegers, T. C., & Mattingly, C. J. (2019).
#' The Comparative Toxicogenomics Database: update 2019. Nucleic acids research, 47(D1), D948–D954. \doi{10.1093/nar/gky868}
#'
#' @examples
#' input_terms <- c("50-00-0", "64-17-5", "methanal", "ethanol")
#' dat <- extr_ctd(
#'   input_terms = input_terms,
#'   category = "chem",
#'   report_type = "genes_curated",
#'   input_term_search_type = "directAssociations",
#'   action_types = "ANY",
#'   ontology = c("go_bp", "go_cc")
#' )
#' dplyr::glimpse(dat)
extr_ctd <- function(
    input_terms,
    category = "chem",
    report_type = "genes_curated",
    input_term_search_type = "directAssociations",
    action_types = NULL,
    ontology = NULL
) {

  # Check that input terms are provided
  if (length(input_terms) == 0) {
    stop("At least one input term must be provided.")
  }

  # Define the base URL
  base_url <- "https://ctdbase.org/tools/batchQuery.go"

  # Combine input terms into a single string, assuming input_terms is a vector
  input_terms_string <- paste(input_terms, collapse = "|")

  # Define the parameters for the request
  params <- list(
    inputType = category,
    inputTerms = input_terms_string,
    report = report_type,
    format = "csv",  # Fixed to CSV format
    inputTermSearchType = input_term_search_type
  )

  # Add optional parameters if they are provided
  if (!is.null(action_types)) {
    params$actionTypes <- paste(action_types, collapse = "|")
  }

  if (!is.null(ontology)) {
    params$ontology <- paste(ontology, collapse = "|")
  }

  # Create and perform the request
  resp <- httr2::request(base_url) %>%
    httr2::req_url_query(!!!params) %>%
    httr2::req_perform() %>%
    httr2::resp_body_string()

  out <- read.csv(resp)

  out
}



# library(httr2)
# Tetramer -------
# resp <- request("https://ctdbase.org/query.go") |>
#   req_url_query(
#     chem = c("50-00-0"),
#     disease = "",
#     `d-3572529-e` = "1",
#     gene = "",
#     chemqt = "equals",
#     go = "",
#     type = "tetramer",
#     diseaseInputTermSearchTypeName = "directAssociations",
#     perPage = "50",
#     goInputTermSearchTypeName = "directAssociations",
#     diseaseqt = "equals",
#     action = "Search",
#     chemInputTermSearchTypeName = "directAssociations",
#     goqt = "equals",
#     `6578706f7274` = "1",
#     geneqt = "equals",
#   ) |>
#   req_headers(
#     `User-Agent` = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0",
#     Accept = "*/*",
#     `Accept-Language` = "en-US,en;q=0.5",
#     `Accept-Encoding` = "gzip, deflate, br, zstd",
#     Cookie = "JSESSIONID=CCDE56D28D4060ADEDA3A86D5247D481",
#     `Sec-GPC` = "1",
#     Priority = "u=0",
#   ) |>
#   req_perform()


# tab_file <- tempfile(fileext = "csv")
#
# writeBin(resp$body, tab_file)
#
# cc <- read.csv(tab_file)
#
