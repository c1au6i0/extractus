## code to prepare `DATASET` dataset goes here
# A vector containing assay names of ICE of NTP.


assay_file <- here::here("inst", "ice_assays.txt")
link_file <- "https://ice.ntp.niehs.nih.gov/downloads/REST_API_assays.txt"
download.file(link_file, assay_file)

all_ice_assays <- readLines(link_file, warn = FALSE)
usethis::use_data(all_ice_assays, overwrite = TRUE, internal = TRUE)
