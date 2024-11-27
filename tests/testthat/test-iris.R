library(testthat)


# @@@@@@@@@
# IRIS ----
# @@@@@@@@@



Sys.sleep(4)

test_that("extr_iris_ fetches data for multiple CASRN", {
  skip_on_cran()
  results <- extr_iris(c("50-00-0", "1332-21-4"))
  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(results)
})

Sys.sleep(4)

test_that("extr_iris_ returns an empty data when wrong CASRN", {
  skip_on_cran()
  results <- extr_iris("50-00-000")
  expect_equal(nrow(results), 0)
})
