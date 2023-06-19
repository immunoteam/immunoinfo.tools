#' @export

ToPercentile <- function(x) {
  f <- ecdf(x)
  f(x)
}
