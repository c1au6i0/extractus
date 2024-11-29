library(testthat)

# @@@@@@@@@
# ICE ----
# @@@@@@@@@

Sys.sleep(4)

test_that("extr_ice fetches data for CASRN 50-00-0", {
  skip_on_cran()
  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(extr_ice(casrn = "50-00-0"))
})


Sys.sleep(3)

test_that("extr_ice warns for CASRN 50-00-1", {
  skip_on_cran()

  expect_warning(
    extr_ice(casrn = "50-00-1"),
    "It seems that the ids were not found in ICE"
  )
})
