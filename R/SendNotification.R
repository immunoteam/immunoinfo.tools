#' @export
# SendNotification: sends a message through the notification area of a Linux desktop
SendNotification <- function(x = "Task done.", app.name = "R") {
  cmd <- paste0("notify-send  -a '", app.name, "' '", x, "", "'")
  system(cmd)
}
