library(testthat)


# @@@@@@@@@
# IRIS ----
# @@@@@@@@@



test_that("extr_iris_ fetches data for CASRN 50-00-0", {

  skip_on_cran()
  results <- extr_iris_("50-00-0")
  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(results)
})

test_that("extr_iris_ returns a data frame", {

  skip_on_cran()
  results <- extr_iris_("50-00-0")
  expect_s3_class(results, "data.frame")
})

