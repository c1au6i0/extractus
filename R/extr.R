#' extr_comptox
#'
#' @param ids A vector of characters where each element is a substance descriptor you wish to query.
#' @param ... Any other argument of `ECOTOXr::websearch_comptox`
#'
#' @return List of data.frames
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

  # if it doesn't find the value it returns all of them.

  # endpoints_filt <- endpoints[endpoints$casrn %in% ids & endpoints$assay %in% assays, ]
  #
  # if (nrow(endpoints_filt) == 0) {
  #   endpoints_filt[1, ] <- NA
  # }
  #
  # endpoints_filt
}


#' extr_tox
#'
#' Extract toxicological information from PubChem, ICE, Comptox, IRIS.
#'
#' @param casrn
#'
#' @return List of Dataframes.
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

  iris_filt <- iris_chem[iris_chem$casrn %in% casrn, ]

  c(list(ghs_dat =  ghs_dat, iris = iris_filt), comptox_list, ice_dat_list)
}


