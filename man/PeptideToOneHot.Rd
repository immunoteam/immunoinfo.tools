\name{PeptideToOneHot}
\alias{PeptideToOneHot}
\title{Converts peptide sequences into one-hot encoding matrix format.}
\usage{
PeptideToOneHot(x)
}
\arguments{
\item{x}{a character \code{vector} containing the peptide sequences to be encoded}
}
\description{
  This function converts peptide sequences into a one-hot encoded matrix representation.
}
\details{
 Each amino acid in the peptide sequences is encoded as a binary vector or length 19, where each position in the vector corresponds to a unique amino acid. If the amino acid is present in the sequence, its corresponding position in the vector is set to 1, otherwise, it is set to 0. To note, amino acid Y is encoded as 19 \code{FALSE} values.
}
\examples{
PeptideToOneHot(c("AAAAA", "CCCCC", "GGGGG"))
}
\value{
  Returns a binary matrix where rows represent peptides and columns represent amino acids.
}
