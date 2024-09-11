library(testthat)



input_terms <- c("50-00-0", "64-17-5", "methanal", "ethanol")

Sys.sleep(3)

test_that("extr_ctd fetches expression data", {

  skip_on_cran()
  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(
    extr_ctd(input_terms = input_terms,
                report_type = "cgixns",
                category = "chem",
                action_types = "expression")
  )
})




test_that("extr_ctd fetches other data", {

  skip_on_cran()
  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(
    extr_ctd(
         input_terms = input_terms,
         category = "chem",
         report_type = "genes_curated",
         input_term_search_type = "directAssociations",
         action_types = "ANY",
         ontology = c("go_bp", "go_cc")
      )
  )
})





test_that("extr_ctd fetches tetramers data", {

  skip_on_cran()
  # Ensure the output is as expected by comparing to a stored snapshot
  expect_snapshot(
    extr_tetramer(
        chem = c("50-00-0"),
        disease = "",
        gene = "",
        go = "",
        input_term_search_type = "directAssociations",
        qt_match_type = "equals"
      )
  )
})
