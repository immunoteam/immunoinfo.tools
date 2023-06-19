#' @export

SimplifyAggr <- function(tbl, using_dplyr = FALSE) {if(!using_dplyr) tbl[, 2] %>% set_names(tbl[, 1]) else tbl[, 2] %>% pull() %>% set_names(tbl[, 1] %>% pull())}
