# library(testthat)


# @@@@@@@@@
# IRIS ----
# @@@@@@@@@

result <- extr_iris_("50-00-0")

test_that("extr_iris_ fetches data for CASRN 50-00-0", {


  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(result)
})

test_that("extr_iris_ returns a data frame", {
  expect_s3_class(result, "data.frame")
})


# @@@@@@@@@
# ICE ----
# @@@@@@@@@

test_that("extr_ice fetches data for CASRN 50-00-0", {

  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(extr_ice(casrn = "50-00-0"))
})

# @@@@@@@@@
# TOX ----
# @@@@@@@@@

test_that("extr_tox fetches data for CASRN 50-00-0", {

  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(extr_tox(casrn = "50-00-0"))
})



