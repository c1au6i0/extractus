library(testthat)

# @@@@@@@@@
# TOX ----
# @@@@@@@@@

# Sys.sleep(5)
test_that("extr_tox fetches data for CASRN 50-00-0", {
  skip_on_cran()
  result <- extr_tox(casrn = "50-00-0")
  expect_snapshot(result[!names(result) %in% "comptox_cover_sheet"])
})
