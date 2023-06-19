\name{GenerateXmers}
\alias{GenerateXmers}
\title{Generate Xmers}
\usage{
GenerateXmers(sq, merslngth)
}
\arguments{
  \item{sq}{a character vector representing a sequence}
  \item{merslngth}{an integer specifying the length of the desired xmers}
}
\description{
This function generates xmers (subsequences) of a specified length from a given sequence.
}
\details{
The function takes a sequence \code{sq} and an integer \code{merslngth} as input. It generates all possible xmers of length \code{merslngth} from the sequence. An xmer is a subsequence of the original sequence. The function returns a character vector containing the generated xmers.

If the length of \code{sq} is shorter than \code{merslngth}, the function will return an empty vector.

The function first creates a matrix \code{coordsmtx} using the \code{seq()} function. The matrix has two columns representing the starting and ending positions of the xmers in the sequence. The starting positions range from 1 to the length of \code{sq}, and the ending positions are calculated as the starting positions plus \code{merslngth} minus 1. The matrix is then subsetted to remove positions that exceed the length of \code{sq}.

Next, the function applies a series of operations on \code{coordsmtx} and \code{sq} to generate the xmers. It uses the \code{apply()} function twice, first to iterate over the rows of \code{coordsmtx} and extract the corresponding subsequences from \code{sq}, and then to concatenate the elements of each column to form the xmers.

The resulting xmers are stored in the variable \code{tmp}. The function filters out xmers that have a length different from \code{merslngth} using the \code{nchar()} function.

Finally, the function returns the character vector \code{tmp}, which contains the generated xmers.
}
\examples{
sq <- c("A", "T", "G", "C", "A", "T", "G", "C", "A", "T", "G", "C")
GenerateXmers(sq, 3)
# Output:
# [1] "ATG" "TGC" "GCA" "CAT" "ATG" "TGC"
}
