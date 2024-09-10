#' extr_casrn_from_cid
#'
#' This function retrieves the CAS-RN (Chemical Abstracts Service Registry Number)
#' for a given set of PubChem Compound Identifiers (CID). It queries PubChem through
#' the `webchem` package and extracts the CAS-RN from the depositor-supplied synonyms.
#'
#' @param pubchem_id A numeric vector of PubChem CIDs. These are unique identifiers
#' for chemical compounds in the PubChem database.
#' @return A data frame containing the CID, CAS-RN, and IUPAC name of the compound.
#' The returned data frame includes three columns:
#' \describe{
#'   \item{CID}{The PubChem Compound Identifier.}
#'   \item{cas_rn}{The corresponding CAS-RN of the compound.}
#'   \item{IUPACName}{The IUPAC name of the compound.}
#' }
#' @export
#' @examples
#' \dontrun{
#' # Example with formaldehyde and aflatoxin
#' cids <- c(712, 14434)  # CID for formaldehyde and aflatoxin B1
#' extr_casrn_from_cid(cids)
#' }
extr_casrn_from_cid <- function(pubchem_id) {

  cli::cli_alert_info("Querying {pubchem_id}.")

  pubchem_data <- webchem::pc_sect(pubchem_id, "Depositor-Supplied Synonyms")

  # Use base R to filter, rename, and select columns
  cas_rn_data <- pubchem_data[grep("^\\d{2,7}-\\d+-\\d$", pubchem_data$Result), ]
  colnames(cas_rn_data)[colnames(cas_rn_data) == "Result"] <- "cas_rn"
  colnames(cas_rn_data)[colnames(cas_rn_data) == "Name"] <- "IUPACName"
  colnames(cas_rn_data)[colnames(cas_rn_data) == "CID"] <- "cid"

  cas_rn_data <- cas_rn_data[c("cid", "cas_rn", "IUPACName")]
  return(cas_rn_data)
}




#' extr_chem_info
#'
#' `r lifecycle::badge('experimental')`
#' This function takes a vector of IUPAC names and queries the PubChem database
#' (using the `webchem` package) to obtain the corresponding CAS-RN and CID for
#' each compound. It reshapes the resulting data, ensuring that each compound has
#' a unique row with the CID, CAS-RN, and additional chemical properties.
#'
#' @param IUPAC_names A character vector of IUPAC names. These are standardized names
#' of chemical compounds that will be used to search in the PubChem database.
#' @param stop_on_warning Logical. If set to TRUE, the function will stop and
#' throw an error if any substances are not found in PubChem. Defaults to FALSE,
#' in which case a warning is issued.
#' @return A data frame with information on the queried compounds, including:
#' \describe{
#'   \item{iupac_name}{The IUPAC name of the compound.}
#'   \item{cid}{The PubChem Compound Identifier (CID).}
#'   \item{isomeric_smiles}{The SMILES string (Simplified Molecular Input Line Entry System).}
#' }
#' @export
#' @examples
#' \dontrun{
#' # Example with formaldehyde and aflatoxin
#' compounds <- c("Formaldehyde", "Aflatoxin B1")
#' extr_chem_info(compounds)
#' }
extr_chem_info <- function(IUPAC_names, stop_on_warning = FALSE){
  iupac_cid <- webchem::get_cid(IUPAC_names, domain = "compound", verbose = TRUE)


  # Rename and mutate using base R
  iupac_cid$constituent <- iupac_cid$query
  iupac_cid$cid <- as.numeric(iupac_cid$cid)

  # Handle missing CIDs
  if (any(is.na(iupac_cid$cid))) {
    missing_c <- iupac_cid$constituent[is.na(iupac_cid$cid)]

    if (stop_on_warning) {
      cli::cli_abort(paste("CID not retrieved for", paste(missing_c, collapse = ", "), "!"))
    } else {
      cli::cli_warn(paste("CID not retrieved for", paste(missing_c, collapse = ", "), "!"))
    }
  }


  iupac_cid_clean <- iupac_cid[!is.na(iupac_cid$cid), ]

  # Get CAS from PubChem
  cid_cas <- extr_casrn_from_cid(iupac_cid_clean$cid)

  # Ensure unique rows and summarize using base R
  iupac_cid_cas_unique <- stats::aggregate(cbind(cid, cas_rn) ~ IUPACName, data = cid_cas, function(x) list(unique(x)))
  iupac_cid_cas_unique$cid <- sapply(iupac_cid_cas_unique$cid, function(x) x[!is.na(x)][1])
  iupac_cid_cas_unique$cas_rn <- sapply(iupac_cid_cas_unique$cas_rn, function(x) x[!is.na(x)][1])
  iupac_cid_cas_unique$cid_all <- sapply(iupac_cid_cas_unique$cid, paste, collapse = ", ")
  iupac_cid_cas_unique$cas_rn_all <- sapply(iupac_cid_cas_unique$cas_rn, paste, collapse = ", ")

  all_prop <- webchem::pc_prop(iupac_cid_cas_unique$cid)
  all_prop$CID <- as.numeric(all_prop$CID)

  # Clean and join data
  out <- merge(iupac_cid_cas_unique, all_prop, by.x = "cid", by.y = "CID", all.x = TRUE)
  out <- merge(out, iupac_cid, by.x = "cid", by.y = "cid", all.x = TRUE) |>
    janitor::clean_names()

  colnames(out)[colnames(out) == "iupac_name_x"] <- "iupac_name"
  colnames(out)[colnames(out) == "query_x"] <- "query"
  out_clean <- out[, !colnames(out) %in% c("constituent_x", "query_y", "constituent_y", "constituent")]

  out_clean
}
