# future_apply: a variant for apply with a potential to be parallelized
future_apply <- function(x, MARGIN, FUN) {
  if(MARGIN == 1) {
    x %>%
      split(1:nrow(x)) %>%
      map(unlist) %>%
      furrr::future_map(FUN)
  } else if(MARGIN == 2) {
    x %>%
      as.list %>%
      furrr::future_map(FUN)
  } else if(MARGIN > 2) {
    stop("Only row- and column-wise operations are supported.")
  }
}
