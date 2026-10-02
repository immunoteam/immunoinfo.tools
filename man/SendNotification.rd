\name{SendNotification}
\alias{SendNotification}
\title{Send a Linux Desktop Notification}
\usage{
SendNotification(x = "Task done.", app.name = "R", urgency = "normal")
}
\arguments{
\item{x}{a character string containing the message to display}
\item{app.name}{a character string specifying the application name to display with the notification}
\item{urgency}{a character string specifying the urgency level of the notification. Must be one of \code{"low"}, \code{"normal"}, or \code{"critical"}. Defaults to \code{"normal"}.}
}
\description{
This function sends a message through the notification area of a Linux desktop using the \code{notify-send} command.
}
\details{
The function takes three arguments: \code{x}, which specifies the message to display, \code{app.name}, which specifies the name of the application associated with the notification, and \code{urgency}, which specifies the urgency level of the notification.

The \code{urgency} argument can take one of three values: \code{"low"}, \code{"normal"}, or \code{"critical"}. These correspond to the urgency levels supported by the \code{notify-send} utility.

The function constructs a system command using \code{notify-send} and executes it using the \code{system()} function.

The \code{notify-send} utility must be installed and available in the system \code{PATH}. The function is intended for use on Linux systems with a desktop notification service.

This function can be useful for notifying the user when a long-running R script or computational task has finished.
}
\examples{
\dontrun{

# Send a notification with the default message

SendNotification()

# Send a custom notification

SendNotification("Analysis finished.")

# Specify a custom application name

SendNotification("Model training completed.", app.name = "My R package")
