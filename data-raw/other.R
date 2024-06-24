


dat <- extr_tox(c("50-00-0", "80508-23-2"))


marc <-  extr_tox("7440-43-9")


write_dataframes_to_excel(dat, here::here("data-raw", "pippo.xlsx"))

write_dataframes_to_excel(marc, here::here("data-raw", "marc.xlsx"))


