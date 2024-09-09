library(testthat)

# Test 1: Check if the function works with a valid chemical name input
test_that("Valid chemical name input", {
  result <- extr_comptox(
    ids = c("Aspirin"),
    download_items = c("DTXCID", "CASRN")
  )
  expect_snapshot(result)
})

# Test 2: Check if the function works with a valid CASRN input
test_that("Valid CASRN input", {
  result <- extr_comptox(
    ids = c("50-00-0"),
    download_items = c("DTXCID", "CASRN")
  )
  expect_snapshot(result)
})


# Test 4: Check if the function works with differnt type of input
test_that("Valid inputs", {
  result <- extr_comptox(
    ids = c("50-00-0", "Aspirin", "DTXSID5020023"),
    download_items = c("DTXCID", "CASRN")
  )
  expect_snapshot(result)
})


# Test 4: Check error handling when a required parameter is missing
test_that("Missing required parameter", {
  expect_error(
    extr_comptox(),
    "The argument ids is required."
  )
})
