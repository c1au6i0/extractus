## code to prepare `DATASET` dataset goes here
# A vector containing assay names of ICE of NTP.

# @@@@@@@@@@
# ICE ------
# @@@@@@@@@@

assay_file <- here::here("inst", "ice_assays.txt")
link_file <- "https://ice.ntp.niehs.nih.gov/downloads/REST_API_assays.txt"
download.file(link_file, assay_file)

all_ice_assays <- readLines(link_file, warn = FALSE)
usethis::use_data(all_ice_assays, overwrite = TRUE, internal = TRUE)

# @@@@@@@@@@@@@@@@@@@@@@
# IARC Monographs ------
# @@@@@@@@@@@@@@@@@@@@@
# https://monographs.iarc.who.int/list-of-classifications/


who_iarc_monographs <- read.csv(here::here("data-raw", "List of Classifications – IARC Monographs on the Identification of Carcinogenic Hazards to Humans_20241129.csv")) |>
  janitor::clean_names() |>
  dplyr::rename(casrn = cas_no)


# @@@@@@@@@@@@@@@@@@@@@@
# Import ------
# @@@@@@@@@@@@@@@@@@@@@


usethis::use_data(all_ice_assays, who_iarc_monographs, overwrite = TRUE, internal = TRUE)
