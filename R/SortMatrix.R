#' @export
# SortMatrix: sorts the rows or columns of the matrix based on the output of an aggregation function
SortMatrix <- function(x, dim, FUN, decreasing = FALSE, na.rm = T) {
  vals_aggr <- apply(x, dim, FUN, na.rm = na.rm)
  ordervctr <- order(vals_aggr, decreasing = decreasing)
  if(dim == 1) x[ordervctr, ] else if(dim == 2) x[, ordervctr]
}
