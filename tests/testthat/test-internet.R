library(testthat)



test_that("check_url_internet fails for wrong url", {

  skip_on_cran()

  expect_error(check_url_internet("www.google.com/prova"), "Error")
})

test_that("check_url_internet fails for wrong url", {

  skip_on_cran()

  expect_no_warning(check_url_internet("https://www.google.com"))
})
