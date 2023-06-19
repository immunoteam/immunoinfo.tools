\name{saveAs}
\alias{saveAs}
\title{Save Object with Custom Name}
\usage{
saveAs(obj, objname, filename)
}
\arguments{
  \item{obj}{an R object to be saved}
  \item{objname}{a character string specifying the desired name for the object}
  \item{filename}{a character string specifying the file path and name for saving the object}
}
\description{
This function saves an R object with a custom name to a file.
}
\details{
The function takes three arguments: \code{obj}, \code{objname}, and \code{filename}. The \code{obj} argument is the R object that you want to save. The \code{objname} argument is a character string specifying the desired name for the object. The \code{filename} argument is a character string specifying the file path and name for saving the object.

The function first renames the \code{obj} to the desired \code{objname} using the \code{eval(parse())} construct. It evaluates the expression \code{eval(parse(text = paste0(objname, "<- obj")))}, which assigns the \code{obj} to the new name.

Then, the function uses the \code{eval(parse())} construct again to save the renamed object to the specified \code{filename}. It evaluates the expression \code{eval(parse(text = paste0('save(', objname, ', file ="', filename, '")')))}, which calls the \code{save()} function with the renamed object and the \code{filename} as arguments.

Note that the function uses the \code{eval(parse())} construct for flexibility, but it should be used with caution as it evaluates text as code and can introduce security risks if used with untrusted input.
}
\examples{
# Save a data frame named "my_data" to a file named "my_data.RData"
my_data <- data.frame(x = 1:5, y = letters[1:5])
saveAs(my_data, "my_data", "my_data.RData")

# Save a vector named "my_vector" to a file named "my_vector.RData"
my_vector <- 1:10
saveAs(my_vector, "my_vector", "my_vector.RData")
}
