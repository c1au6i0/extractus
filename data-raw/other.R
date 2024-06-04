


dat <- extr_tox(c("50-00-0", "80508-23-2"))




write_dataframes_to_excel(dat, here::here("data-raw", "pippo.xlsx"))



# Other --------------

library(httr2)


ids = "50-00-0"
assays <- c("Acute Oral Toxicity Assay", "Oral Acute Toxicity")


library("httr2")

# Making a POST request
dat <- request("https://ice.ntp.niehs.nih.gov/api/v1/search") |>
  req_body_json(list(chemids = ids, assays = c("IRIS Carcinogenicity", "U-SENS")), auto_unbox = FALSE) |>
  req_perform()



unique(dplyr::bind_rows(results$endPoints)$assay)


dat <- request("https://ice.ntp.niehs.nih.gov/api/v1/search") |>
  req_body_json(list(chemid = ids), auto_unbox = FALSE) |>
  req_perform()

dat |>
  resp_raw()

library(rvest)
html <- read_html("https://cfpub.epa.gov/ncea/iris/search/basic/index.cfm?first_letter=&keyword=&roe=oral&roe=inhalation&oral_tox_ncvminb=&oral_tox_ncvmine=%0D%0A%09%09%090&oral_tox_ncvmaxb=&oral_tox_ncvmaxe=%0D%0A%09%09%090&inh_tox_ncvminb=&inh_tox_ncvmine=%0D%0A%09%09%090&inh_tox_ncvmaxb=&inh_tox_ncvmaxe=%0D%0A%09%09%090&oral_sp_inter_rng=%0D%0A%09all&oral_sp_intra_rng=%0D%0A%09all&oral_sp_subc_rng=%0D%0A%09all&oral_sp_loael_rng=%0D%0A%09all&oral_sp_db_incomp_rng=%0D%0A%09all&oral_sp_other_rng=%0D%0A%09all&inhal_sp_inter_rng=%0D%0A%09all&inhal_sp_intra_rng=%0D%0A%09all&inhal_sp_subc_rng=%0D%0A%09all&inhal_sp_loael_rng=%0D%0A%09all&inhal_sp_db_incomp_rng=%0D%0A%09all&inhal_sp_other_rng=%0D%0A%09all&oral_sv_c_minb=&oral_sv_c_mine=%0D%0A%09%090&oral_sv_c_maxb=&oral_sv_c_maxe=%0D%0A%09%090&inh_tox_c_v_minb=&inh_tox_c_v_mine=%0D%0A%09%090&inh_tox_c_v_maxb=&inh_tox_c_v_maxe=%0D%0A%09%090/")
html %>%
  html_element("#searchMain , th, td") %>%
  html_table()



