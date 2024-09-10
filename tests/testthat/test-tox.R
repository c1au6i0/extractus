library(testthat)

# @@@@@@@@@
# TOX ----
# @@@@@@@@@

Sys.sleep(3)
test_that("extr_tox fetches data for CASRN 50-00-0", {

  skip_on_cran()
  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(extr_tox(casrn = "50-00-0"))
})
