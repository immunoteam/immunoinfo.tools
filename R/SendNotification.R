#' @export
# SendNotification: sends a message through the notification area of a Linux desktop
SendNotification <- function(x = "Task done.", app.name = "R", urgency = "critical") {
  cmd <- paste0("notify-send -u '", urgency, "'  -a '", app.name, "' '", x, "", "'")
  system(cmd)
}
