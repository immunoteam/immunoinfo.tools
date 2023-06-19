#' @export

saveAs <- function(obj, objname, filename) {
  eval(parse(text = paste0(objname, "<- obj"))) # renames obj to objname
  eval(parse(text = paste0('save(', objname, ', file ="', filename, '")')))
}
