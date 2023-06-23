\name{ExtractCorrResults}
\alias{ExtractCorrResults}
\title{Extract Correlation Results from Hmisc rcorr object}
\usage{
ExtractCorrResults(x, rounding = NULL, string_output = TRUE)
}
\arguments{
\item{x}{an object of class \code{"list"} containing the results of a correlation test from \code{"Hmisc"} package's \code{"rcorr"} function}
\item{rounding}{an optional integer specifying the number of decimal places to round the correlation coefficient and p-value (default: \code{NULL})}
\item{string_output}{a logical value indicating whether the results should be returned as a formatted string (default: \code{TRUE})}
}
\description{
This function extracts relevant information from the results of a correlation test and returns it as either a formatted string or a named vector.
}
\details{
The function takes three arguments: \code{x}, \code{rounding}, and \code{string_output}. The \code{x} argument is an object of class \code{"cor.test"} containing the results of a correlation test. The \code{rounding} argument is an optional integer specifying the number of decimal places to round the correlation coefficient and p-value. The \code{string_output} argument is a logical value indicating whether the results should be returned as a formatted string.

The function extracts the following information from \code{x}:

    \code{r}: the correlation coefficient
    \code{P}: the p-value
    \code{n}: the number of observations

If \code{string_output} is \code{TRUE} (the default), the function formats the correlation coefficient and p-value using the \code{format()} function with the specified \code{rounding} argument. It then constructs a string of the form "r = {correlation coefficient} P = {p-value} n = {number of observations}" and returns it.

If \code{string_output} is \code{FALSE}, the function returns a named vector containing the correlation coefficient (\code{r}), p-value (\code{P}), and number of observations (\code{n}). The names of the vector elements are set using the \code{set_names()} function from the \code{purrr} package.

Note that this function is specifically designed for extracting results from objects of class \code{"cor.test"}.
}
\examples{
Perform a correlation test

x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)
result <- cor.test(x, y)
Extract relevant information from the correlation test results as a formatted string

extracted_results_string <- ExtractCorrResults(result)
extracted_results_string
Extract relevant information from the correlation test results as a named vector

extracted_results_vector <- ExtractCorrResults(result, rounding = 2, string_output = FALSE)
extracted_results_vector
}
