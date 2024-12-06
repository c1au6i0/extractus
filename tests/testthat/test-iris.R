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

Sys.sleep(4)

test_that("extr_iris produces a dataframe with 3 rows for specific input", {
  result <- extr_iris(c("1332-21-4", "50-00-0"), cancer_types = "cancer")
  expect_true(is.data.frame(result))
  expect_equal(nrow(result), 2)
})

Sys.sleep(4)

test_that("extr_iris do not retrieve all casn when no casrn", {
  result <- extr_iris(c("1", "50-00-0"), cancer_types = "cancer")
  expect_true(is.data.frame(result))
  expect_equal(nrow(result), 1)
})
