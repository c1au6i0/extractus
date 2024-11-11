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

Sys.sleep(3)

test_that("extr_pubchem_fema works correctly", {
  skip_on_cran()
  casrn_list <- c("64-17-5", "50-00-0") # Ethanol and Formaldehyde
  result <- extr_pubchem_fema(casrn_list)
  expect_snapshot(result)
})

Sys.sleep(3)
test_that("extr_pubchem_ghs works correctly", {
  skip_on_cran()
  casrn_list <- c("50-00-0", "64-17-5") # Formaldehyde and Ethanol
  result <- extr_pubchem_ghs(casrn_list)
  expect_snapshot(result)
})
