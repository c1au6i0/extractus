library(testthat)


compounds <- c("Formaldehyde", "Aflatoxin B1")

Sys.sleep(3)

test_that("extr_chem_info fetches chem data", {

  skip_on_cran()
  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(
    extr_chem_info(compounds)
  )
})

