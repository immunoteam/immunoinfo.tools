#' @export

GenerateXmers <- function(sq, merslngth) {
  coordsmtx <- cbind(seq(1, length(sq)), seq(1, length(sq)) + merslngth - 1)
  coordsmtx <- coordsmtx[coordsmtx[, 1] <= length(sq), , drop = FALSE]
  coordsmtx <- coordsmtx[coordsmtx[, 2] <= length(sq), , drop = FALSE]
  tmp <- apply(coordsmtx, 1, function(x) {
    sq[x[1]:x[2]]}) %>% apply(2, function(x) {paste0(x, collapse = "")})
  tmp[nchar(tmp) == merslngth]
}
