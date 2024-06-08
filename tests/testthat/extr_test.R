# library(testthat)



result <- extr_iris_("50-00-0")

test_that("extr_iris_ fetches data for CASRN 50-00-0", {


  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(result)
})

test_that("extr_iris_ returns a data frame", {
  expect_s3_class(result, "data.frame")
})
