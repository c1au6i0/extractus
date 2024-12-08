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

# @@@@@@@@@@@@@@@@@@@@@@
# TEST FIND ASSAYS. ---
# @@@@@@@@@@@@@@@@@@@@@@

test_that("extr_ice_assay_names returns 2030 elements with NULL", {
  result <- extr_ice_assay_names()
  expect_equal(length(result), 2030)
})

# Test 2: When searching for "opera", it should return exactly 45 elements
test_that("extr_ice_assay_names returns 45 elements for 'opera' search", {
  result <- extr_ice_assay_names("OPERA")
  expect_equal(length(result), 45) #
})

test_that("extr_ice_assay_names returns 0 elements for '10' search", {
  expect_error(extr_ice_assay_names(10))
})
