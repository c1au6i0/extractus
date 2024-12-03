#' Retrieve CASRN for PubChem CIDs
#'
#' This function retrieves the CASRN for a given set of PubChem Compound Identifiers (CID).
#' It queries PubChem through the `webchem` package and extracts the CASRN from the depositor-supplied synonyms.
#'
#' @param pubchem_id A numeric vector of PubChem CIDs. These are unique identifiers
#' for chemical compounds in the PubChem database.
#' @return A data frame containing the CID, CASRN, and IUPAC name of the compound.
#' The returned data frame includes three columns:
#' \describe{
#'   \item{CID}{The PubChem Compound Identifier.}
#'   \item{cas_rn}{The corresponding CASRN of the compound.}
#'   \item{IUPACName}{The IUPAC name of the compound.}
#' }
#' @seealso \href{https://pubchem.ncbi.nlm.nih.gov/}{PubChem}
#' @export
#' @examples
#' \donttest{
#' # Example with formaldehyde and aflatoxin
#' cids <- c(712, 14434) # CID for formaldehyde and aflatoxin B1
#' extr_casrn_from_cid(cids)
#' }
extr_casrn_from_cid <- function(pubchem_id) {
  check_internet()

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




#' Query Chemical Information from IUPAC Names
#'
#' This function takes a vector of IUPAC names and queries the PubChem database
#' (using the `webchem` package) to obtain the corresponding CASRN and CID for
#' each compound. It reshapes the resulting data, ensuring that each compound has
#' a unique row with the CID, CASRN, and additional chemical properties.
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
#' \donttest{
#' # Example with formaldehyde and aflatoxin
#' extr_chem_info(IUPAC_names = c("Formaldehyde", "Aflatoxin B1"))
#' }
extr_chem_info <- function(IUPAC_names, stop_on_warning = FALSE) {
  check_internet()

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


#' Extract FEMA from PubChem
#'
#' This function retrieves FEMA (Flavor and Extract Manufacturers Association) flavor profile information for a list of CAS Registry Numbers (CASRN) from the PubChem database using the `webchem` package. It applies the function `extr_fema_pubchem_` to each CASRN in the input vector and combines the results into a single data frame.
#'
#' @param casrn A vector of CAS Registry Numbers (CASRN) as atomic vectors.
#' @return A data frame containing the FEMA flavor profile information for each CASRN. If no information is found for a particular CASRN, the output will include a row indicating this.
#' @seealso \href{https://pubchem.ncbi.nlm.nih.gov/}{PubChem}
#' @export
#' @examples
#' \donttest{
#' extr_pubchem_fema(c("64-17-5", "50-00-0"))
#' }
extr_pubchem_fema <- function(casrn) {
  check_internet()
  dat <- lapply(casrn, extr_pubchem_fema_)
  do.call(rbind, dat)
}


#' extr_pubchem_fema_
#'
#' @param casrn Atomic Vector.
#' @noRd
#' @keywords internal
extr_pubchem_fema_ <- function(casrn) {
  dat_cid <- webchem::get_cid(casrn, match = "first", verbose = TRUE)
  cat("\n")
  col_out <- c(
    "cid",
    "casrn",
    "name",
    "result",
    "source_name",
    "source_id",
    "other"
  )

  if (is.na(dat_cid$cid)) {
    na_matrix <- matrix(NA, nrow = 1, ncol = 7)
    out_df <- as.data.frame(na_matrix)
    colnames(out_df) <- col_out
    out_df$casrn <- casrn
    out_df$other <- "casrn not found"
    cli::cli_alert_info("CASRN {.field {casrn}} not found!")
  } else {
    names(dat_cid)[1] <- "casrn"
    dat <- janitor::clean_names(webchem::pc_sect(dat_cid$cid,
      verbose = TRUE,
      section = "FEMA Flavor Profile"
    ))

    if (length(dat) == 0) {
      na_matrix <- matrix(NA, nrow = 1, ncol = 7)
      out_df <- as.data.frame(na_matrix)
      colnames(out_df) <- col_out
      out_df$casrn <- casrn
      out_df$other <- "FEMA info not found"
      cli::cli_alert_info("FEMA for {.field {casrn}} not found!")
      out_df$cid <- dat_cid$cid
    } else {
      out_df <- merge(dat_cid, dat, by = "cid")
      out_df[, "other"] <- NA
      out_df$result <- gsub("Flavor and Extract Manufacturers Association \\(FEMA\\)", "", out_df$result)
    }
  }

  out_df
}


#' Extract GHS Codes from PubChem
#'
#' This function extracts GHS (Globally Harmonized System) codes from PubChem. It relies on the `webchem` package to interact with PubChem.
#'
#' @param casrn Character vector of CAS Registry Numbers (CASRN).
#' @return A dataframe containing GHS information.
#' @seealso \href{https://pubchem.ncbi.nlm.nih.gov/}{PubChem}
#' @export
#' @examples
#' \donttest{
#' extr_pubchem_ghs(casrn = c("50-00-0", "64-17-5"))
#' }
extr_pubchem_ghs <- function(casrn) {
  check_internet()
  dat <- lapply(casrn, extr_pubchem_ghs_)
  do.call(rbind, dat)
}


#' extr_ghs_pubchem_
#'
#' Extract GHS codes from PubChem. The function relay on the package `webchem` to interact with pubchem.
#'
#' @param casrn Atomic character vector of casrn.
#' @noRd
#' @keywords internal
#' @return Dataframe of GHS info.
extr_pubchem_ghs_ <- function(casrn) {
  if (missing(casrn)) {
    cli::cli_abort("The argument {.field {casrn}} is required.")
  }

  # Check if online

  cli::cli_alert_info("Getting PubChem IDS...")
  dat_cid <- webchem::get_cid(casrn, match = "first", verbose = TRUE)
  cat("\n")

  col_out <- c("cid", "casrn", "name", "GHS", "source_name", "source_id", "other")

  if (is.na(dat_cid$cid)) {
    na_matrix <- matrix(NA, nrow = length(casrn), ncol = 7)
    out_df <- as.data.frame(na_matrix)
    colnames(out_df) <- col_out
    cli::cli_alert_info("CASRN {.field {casrn}} not found!")

    out_df$casrn <- casrn
    out_df$other <- "CASRN not found"
  } else {
    names(dat_cid)[1] <- "casrn"

    dat <- webchem::pc_sect(dat_cid$cid, verbose = TRUE, section = "GHS Classification") |>
      janitor::clean_names()

    if (length(dat) == 0) {
      na_matrix <- matrix(NA, nrow = 1, ncol = 7)
      out_df <- as.data.frame(na_matrix)
      colnames(out_df) <- col_out
      out_df$casrn <- casrn
      out_df$other <- "GHS info not found"
      cli::cli_alert_info("GHS for {.field {casrn}} not found!")
      out_df$cid <- dat_cid$cid
    } else {
      cat("\n")
      dat_f <- dat[dat$result != "          ", ]

      names(dat_f)[3] <- "GHS"
      out_df <- merge(dat_cid, dat_f, by = "cid")
      out_df[, "other"] <- NA
    }
  }

  out_df
}
