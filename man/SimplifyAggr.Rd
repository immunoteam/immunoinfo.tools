\name{SimplifyAggr}
\alias{SimplifyAggr}
\title{Simplify Aggregated Data}
\usage{
SimplifyAggr(tbl, using_dplyr = FALSE)
}
\arguments{
\item{tbl}{a data frame or tibble containing aggregated data}
\item{using_dplyr}{a logical value indicating whether the input data frame is the output of the \code{summarise()} function of the \code{dplyr} package (if set to \code{TRUE}) or is the output of base R's \code{aggregate} function (default: \code{FALSE})}
}
\description{
This function simplifies aggregated data by extracting the second column and setting its names based on the first column.
}
\details{
The function takes two arguments: \code{tbl} and \code{using_dplyr}. The \code{tbl} argument is a data frame or tibble containing aggregated data, where the first column represents the names and the second column represents the values. The \code{using_dplyr} argument is a logical value indicating whether the input data frame is using the dplyr package syntax.

If \code{using_dplyr} is \code{FALSE} (the default), the function uses the \code{set_names()} function from the \code{purrr} package to set the names of the second column based on the values in the first column. It returns a named vector where the names are taken from the first column of \code{tbl} and the values are taken from the second column.

If \code{using_dplyr} is \code{TRUE}, the function assumes the input data frame is using the dplyr package syntax. It uses the \code{pull()} function from the dplyr package to extract the values of the second column and the \code{pull()} function again to extract the values of the first column. It then uses the \code{set_names()} function from the \code{purrr} package to set the names of the extracted values.

Note that the function requires the \code{purrr} and \code{dplyr} packages for setting names and extracting values when \code{using_dplyr} is \code{TRUE}.
}
\examples{
EXAMPLES ARE MISSING
}
