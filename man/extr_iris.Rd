% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extr_tox.R
\name{extr_iris}
\alias{extr_iris}
\title{Extract Data from EPA IRIS Database}
\usage{
extr_iris(keyword = NULL, cancer_types = c("non_cancer", "cancer"))
}
\arguments{
\item{keyword}{A single character string specifying the IUPAC name or the CASRN for the search.}

\item{cancer_types}{A character vector specifying the types of cancer to include in the search. Must be either "non_cancer" or "cancer".}
}
\value{
A data frame containing the extracted data.
}
\description{
The \code{extr_iris} function sends a request to the EPA IRIS database to search for information based on a specified keyword and cancer types. It retrieves and parses the HTML content from the response.
Note that if \code{keyword} is not provide all dataset are retrieved.
}
\examples{
\dontrun{
dat <- extr_iris("glyphosate")
dat <- extr_iris(c("glyphosate", "50-00-0"))
}
}
\seealso{
\href{https://cfpub.epa.gov/ncea/iris/search/}{EPA IRIS database}
}
