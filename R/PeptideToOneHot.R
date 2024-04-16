#' @export

PeptideToOneHot <- function(x) {
  x_splt <- x %>% strsplit("")
  peplngth <- map_dbl(x_splt, length) %>% unique
  if(length(peplngth) > 1) {stop("Peptides are not of equal lengths.")}
  aas_unq <- rownames(protr::AABLOSUM62)
  map(x_splt, \(crnt_pep) {
    map(crnt_pep, \(crnt_aa) {
      vctr <- vector(length = 19)
      i <- fmatch(crnt_aa, aas_unq)
      if(i < 20) {vctr[fmatch(crnt_aa, aas_unq)] <- TRUE}
      return(vctr)
    }) %>% unlist
  }) %>% do.call(rbind, .) %>% set_colnames(paste0(rep(1:peplngth, each = 19), "_", aas_unq))
}
