


dat <- extr_tox(c("50-00-0", "80508-23-2"))


db2 <-  extr_tox("8030-55-5")


write_dataframes_to_excel(db, here::here("data-raw", "db.xlsx"))

extr_ghs_pubchem("8030-55-5")
