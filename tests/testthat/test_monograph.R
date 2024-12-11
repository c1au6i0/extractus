library(testthat)


test_that("extr_monograph returns correct results for CASRN search", {
  ids <- c("105-74-8", "120-58-1")
  result <- extr_monograph(ids = ids, search_type = "casrn", verbose = FALSE)

  expect_s3_class(result, "data.frame")
  expect_true(nrow(result) > 0)
  expect_true(all(result$casrn %in% ids))
})

test_that("extr_monograph returns correct results for name search", {
  ids <- c("Aloe", "Schistosoma", "Styrene")
  result <- extr_monograph(ids = ids, search_type = "name", verbose = FALSE)

  expect_s3_class(result, "data.frame")
  expect_equal(nrow(result), 8)
  expect_true(all(grepl(paste(ids, collapse = "|"), result$agent)))
})

test_that("extr_monograph handles missing ids argument", {
  expect_error(
    extr_monograph(search_type = "casrn", verbose = FALSE),
    "The argument .*ids.* is required."
  )
})

test_that("extr_monograph handles invalid search_type argument", {
  ids <- c("105-74-8")
  expect_error(
    extr_monograph(ids = ids, search_type = "invalid_type", verbose = FALSE),
    "The argument"
  )
})

test_that("extr_monograph returns empty result when no matches are found", {
  ids <- c("non-existent-id")
  result <- extr_monograph(ids = ids, search_type = "casrn", verbose = FALSE)

  expect_s3_class(result, "data.frame")
  expect_equal(nrow(result), 0)
})

test_that("extr_monograph outputs verbose messages when enabled", {
  ids <- c("105-74-8")
  expect_message(
    extr_monograph(ids = ids, search_type = "casrn", verbose = TRUE),
    "Extracting WHO IARC monographs"
  )
})
