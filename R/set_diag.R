#' @export
# set_diag: pipe-friendly version of the diag function
set_diag <- function(x, y){
  diag(x) <- y
  return(x)
}
