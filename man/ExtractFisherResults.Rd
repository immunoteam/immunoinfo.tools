\name{ExtractFisherResults}
\alias{ExtractFisherResults}
\title{Extract Fisher Test Results}
\usage{
ExtractFisherResults(x)
}
\arguments{
\item{x}{an object of class \code{"fisher.test"} containing the results of a Fisher's exact test}
}
\description{
This function extracts relevant information from the results of a Fisher's exact test and returns it as a named vector.
}
\details{
The function takes one argument: \code{x}, which is an object of class \code{"fisher.test"} containing the results of a Fisher's exact test.

The function extracts the following information from \code{x}:

    \code{estimate}: the odds ratio
    \code{p}: the p-value
    \code{confint_low}: the lower bound of the confidence interval
    \code{confint_high}: the upper bound of the confidence interval

It uses the \code{set_names()} function from the \code{purrr} package to set names for the extracted values.

The function returns a named vector with the extracted information.

Note that this function is specifically designed for extracting results from objects of class \code{"fisher.test"}.
}
\examples{
Perform a Fisher's exact test

data <- matrix(c(10, 5, 15, 20), nrow = 2)
result <- fisher.test(data)
Extract relevant information from the Fisher's exact test results

extracted_results <- ExtractFisherResults(result)
extracted_results
}