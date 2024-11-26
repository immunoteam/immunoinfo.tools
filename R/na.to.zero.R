#' @export
# na.to.zero: converts NAs into 0s in a vector or a matrix
na.to.zero <- function(x) {x[is.na(x)] <- 0; x}
