


dat <- extr_tox(c("50-00-0", "80508-23-2"))




write_dataframes_to_excel(dat, here::here("data-raw", "pippo.xlsx"))



# NEW ICE--------------

library(httr2)


ids = c("50-00-0")
assays <- NULL


library("httr2")

# Making a POST request
dat <- request("https://ice.ntp.niehs.nih.gov/api/v1/search") |>
  req_body_json(list(chemids = ids, assays = assays), auto_unbox = FALSE) |>
  req_perform()


results <- dat |>
  resp_body_json()

do.call(rbind, results$endPoints)



## IRIS --------------------
library(httr2)
library(rvest)
query_params <- list(
  keyword = "acephate",
  cancer_or_no_cancer = c("non_cancer", "cancer")
)

# Perform the request and get a response
resp <-
  request(base_url = "https://cfpub.epa.gov/ncea/iris/search/basic/") |>
  req_url_query(!!!query_params, .multi = "explode") |>
  req_perform()

content <- resp |>
  resp_body_html()


dat <- content %>%
  html_element("#searchMain , th, td") %>%
  html_table()








## IRI2

cmd <- 'curl "https://cfpub.epa.gov/ncea/iris/search/act_get_search_results.cfm?first_letter=&keyword=50-00-0&cancer_or_no_cancer=non_cancer&cancer_or_no_cancer=cancer&oral_tox_ncvminb=&oral_tox_ncvmine=^%^0D^%^0A^%^09^%^09^%^090&oral_tox_ncvmaxb=&oral_tox_ncvmaxe=^%^0D^%^0A^%^09^%^09^%^090&inh_tox_ncvminb=&inh_tox_ncvmine=^%^0D^%^0A^%^09^%^09^%^090&inh_tox_ncvmaxb=&inh_tox_ncvmaxe=^%^0D^%^0A^%^09^%^09^%^090&oral_sp_inter_rng=^%^0D^%^0A^%^09all&oral_sp_intra_rng=^%^0D^%^0A^%^09all&oral_sp_subc_rng=^%^0D^%^0A^%^09all&oral_sp_loael_rng=^%^0D^%^0A^%^09all&oral_sp_db_incomp_rng=^%^0D^%^0A^%^09all&oral_sp_other_rng=^%^0D^%^0A^%^09all&inhal_sp_inter_rng=^%^0D^%^0A^%^09all&inhal_sp_intra_rng=^%^0D^%^0A^%^09all&inhal_sp_subc_rng=^%^0D^%^0A^%^09all&inhal_sp_loael_rng=^%^0D^%^0A^%^09all&inhal_sp_db_incomp_rng=^%^0D^%^0A^%^09all&inhal_sp_other_rng=^%^0D^%^0A^%^09all&oral_sv_c_minb=&oral_sv_c_mine=^%^0D^%^0A^%^09^%^090&oral_sv_c_maxb=&oral_sv_c_maxe=^%^0D^%^0A^%^09^%^090&inh_tox_c_v_minb=&inh_tox_c_v_mine=^%^0D^%^0A^%^09^%^090&inh_tox_c_v_maxb=&inh_tox_c_v_maxe=^%^0D^%^0A^%^09^%^090&_dc=1717556241516" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0" -H "Accept: */*" -H "Accept-Language: en-US,en;q=0.5" -H "Accept-Encoding: gzip, deflate, br, zstd" -H "X-Requested-With: XMLHttpRequest" -H "Connection: keep-alive" -H "Referer: https://cfpub.epa.gov/ncea/iris/search/index.cfm?sys_effect_nc=7" -H "Cookie: CFID=64949138; CFTOKEN=e124a7054fffa076^%^2DFF43FDB5^%^2D9C97^%^2D4114^%^2DB48FCD5D19E93EE0; NSC_qh_dgfyu_dgfyu_bjsopx=ffffffff854b087a45525d5f4f58455e445a4a42378b; has_js=1" -H "Sec-Fetch-Dest: empty" -H "Sec-Fetch-Mode: cors" -H "Sec-Fetch-Site: same-origin" -H "Sec-GPC: 1"'

curl_translate(cmd, simplify_headers = TRUE)
