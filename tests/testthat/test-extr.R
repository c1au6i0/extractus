# library(testthat)


# @@@@@@@@@
# IRIS ----
# @@@@@@@@@



test_that("extr_iris_ fetches data for CASRN 50-00-0", {
  results <- extr_iris_("50-00-0")
  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(results)
})

test_that("extr_iris_ returns a data frame", {
  results <- extr_iris_("50-00-0")
  expect_s3_class(results, "data.frame")
})


# @@@@@@@@@
# ICE ----
# @@@@@@@@@

test_that("extr_ice fetches data for CASRN 50-00-0", {
  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(extr_ice(casrn = "50-00-0"))
})


Sys.sleep(3)

test_that("extr_ice fetches data for CASRN 50-00-1", {
  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(extr_ice(casrn = "50-00-1"))
})

# @@@@@@@@@
# TOX ----
# @@@@@@@@@

Sys.sleep(3)
test_that("extr_tox fetches data for CASRN 50-00-0", {
  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(extr_tox(casrn = "50-00-0"))
})
