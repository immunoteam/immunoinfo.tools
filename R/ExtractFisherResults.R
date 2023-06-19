#' @export

ExtractFisherResults <- function(x) {c(x$estimate, x$p.value, x$conf.int[1], x$conf.int[2]) %>% set_names(c("OR", "p", "confint_low", "confint_high"))}
