\name{loadIn}
\alias{loadIn}
\title{Load Objects from File into Environment}
\usage{
loadIn(filename, unlist.results = FALSE)
}
\arguments{
\item{filename}{a character string specifying the file path and name of the saved objects}
\item{unlist.results}{a logical value indicating whether to unlist the loaded objects into separate variables (default: \code{FALSE})}
}
\description{
This function loads objects from a file into the R environment and returns them as a list or as separate variables.
}
\details{
The function takes two arguments: \code{filename} and \code{unlist.results}. The \code{filename} argument is a character string specifying the file path and name of the saved objects. The \code{unlist.results} argument is a logical value indicating whether to unlist the loaded objects into separate variables.

The function creates a new environment \code{tmpenv} using the \code{new.env()} function to temporarily store the loaded objects. It then uses the \code{load()} function to load the objects from the specified \code{filename} into the \code{tmpenv} environment.

Next, the function retrieves the names of the loaded objects using the \code{ls()} function with the \code{envir} argument set to \code{tmpenv}.

If \code{unlist.results} is \code{TRUE}, the function unlists the loaded objects into separate variables. It first converts \code{tmpenv} into a list using the \code{as.list()} function, and then extracts the first element of the list using double square brackets \code{[[1]]}. Finally, it sets the names of the extracted object to the first element of \code{objs} using the \code{set_names()} function from the \code{purrr} package.

If \code{unlist.results} is \code{FALSE} (the default), the function returns the loaded objects as a list using the \code{as.list()} function.

Note that the function requires the \code{purrr} package for setting names when \code{unlist.results} is \code{TRUE}.
}
\examples{
Load objects from a file named "my_data.RData" into the environment

loaded_objects <- loadIn("my_data.RData")
Load objects from a file named "my_data.RData" and unlist them into separate variables

loaded_vars <- loadIn("my_data.RData", unlist.results = TRUE)
}
