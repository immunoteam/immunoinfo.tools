#' @export

ExtractCorrResults <- function(x, rounding = NULL, string_output = TRUE) {
  r_and_p <- c(x$r[2], x$P[2])
  n <- x$n[2]

  if(string_output) {
    r_and_p <- format(r_and_p, digits = rounding)
    paste0("r = ", r_and_p[1], " P = ", r_and_p[2], " n = ", n)
  } else {
    c(r_and_p, n) %>% set_names(c("r", "P", "n"))
  }
}
