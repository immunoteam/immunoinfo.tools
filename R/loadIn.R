#' @export

loadIn <- function(filename, unlist.results = FALSE) {
  tmpenv <- new.env()
  load(filename, envir = tmpenv)
  objs <- ls(envir = tmpenv)

  if(unlist.results) {
    as.list(tmpenv)[[1]] %>% set_names(objs[1])
  } else {
    as.list(tmpenv)
  }
}
