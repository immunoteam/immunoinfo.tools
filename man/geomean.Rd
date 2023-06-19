\name{geomean}
\alias{geomean}
\title{Geometric Mean Calculation}
\usage{
geomean(x, na.rm = TRUE, zero.propagate = FALSE)
}
\arguments{
\item{x}{a numeric vector}
\item{na.rm}{a logical value indicating whether missing values should be removed (default: \code{TRUE})}
\item{zero.propagate}{a logical value indicating whether to propagate zeros (default: \code{FALSE})}
}
\description{
This function calculates the geometric mean of a numeric vector.
}
\details{
The function takes three arguments: \code{x}, \code{na.rm}, and \code{zero.propagate}. The \code{x} argument is a numeric vector for which the geometric mean is to be calculated. The \code{na.rm} argument is a logical value indicating whether missing values should be removed from the calculation (default: \code{TRUE}). The \code{zero.propagate} argument is a logical value indicating whether to propagate zeros (default: \code{FALSE}).

If any element in \code{x} is less than 0, the function returns NaN (Not a Number).

If \code{zero.propagate} is \code{TRUE}, the function checks if any element in \code{x} is equal to 0. If so, it returns 0 as the geometric mean.

If \code{zero.propagate} is \code{FALSE}, the function calculates the geometric mean as follows:

    It filters out any elements in \code{x} that are less than or equal to 0.
    It computes the sum of the logarithms of the remaining elements using \code{sum(log(x[x > 0]), na.rm = na.rm)}.
    It divides the sum by the length of the filtered vector to obtain the mean of the logarithms.
    It exponentiates the mean of the logarithms using \code{exp()} to obtain the geometric mean.

If \code{na.rm} is \code{TRUE}, missing values (NA) are removed from the calculation. If \code{na.rm} is \code{FALSE}, the presence of missing values will cause the function to return NaN.

Note that the function assumes \code{x} contains numeric values and requires positive values when \code{zero.propagate} is \code{FALSE}.
}
\examples{
Calculate the geometric mean of a numeric vector

x <- c(1, 2, 3, 4, 5)
geomean(x)
Calculate the geometric mean of a numeric vector with missing values

y <- c(2, 4, NA, 8)
geomean(y)
Calculate the geometric mean of a numeric vector with zeros and propagate zeros

z <- c(1, 0, 2, 0, 4)
geomean(z, zero.propagate = TRUE)
}
