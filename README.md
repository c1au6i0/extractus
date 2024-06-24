
<!-- README.md is generated from README.Rmd. Please edit that file -->

# extractus

<!-- badges: start -->
<!-- badges: end -->

`extractus` is an R package designed to facilitate the extraction of
toxicological and chemical information from several key databases,
including EPA IRIS, Comptox, PubChem, and ICE.

To communicate to Pubchem and Comptox, `extractus` relies on `ECOTOXr`
and `webchem`.

## Installation

You can install the package from GitHub:

``` r
# Install devtools if not already installed
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}

# Install the package from GitHub
devtools::install_github("c1au6i0/extractus")
```
