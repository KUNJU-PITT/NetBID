% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pipeline_functions.R
\name{get.class.color}
\alias{get.class.color}
\title{Create Color Codes for a Vector of Characters}
\usage{
get.class.color(x, use_color = NULL, pre_define = NULL)
}
\arguments{
\item{x}{a vector of characters, names or labels.}

\item{use_color}{a vector of color codes, colors to be assigned to each member of \code{x}. Default is brewer.pal(9, 'Set1').}

\item{pre_define}{a vector of characters, pre-defined color codes for a certain input (e.g. c("blue", "red") with names c("A", "B")). Default is NULL.}
}
\value{
Return a vector of color codes, with input character vector as names.
}
\description{
\code{get.class.color} creates a vector of color codes for the input character vector. This is a helper function to assign nice looking colors for better visualization.
}
\examples{
get.class.color(c('ClassA','ClassB','ClassC','ClassA','ClassC','ClassC'))
get.class.color(c('ClassA','ClassB','ClassC','SHH','WNT','Group3','Group4'))
get.class.color(c('ClassA','ClassB','ClassC','SHH','WNT','Group3','Group4'),
                 use_color=brewer.pal(8, 'Set1'))

pre_define <- c('blue', 'red', 'yellow', 'green','yellow', 'green')
                ## pre-defined colors for MB
names(pre_define) <- c('WNT', 'SHH', 'Group3', 'Group4','GroupC', 'GroupD')
                ##pre-defined color name for MB
get.class.color(c('ClassA','ClassB','ClassC','SHH','WNT','Group3','Group4'),
                pre_define=pre_define)

\dontrun{
}
}
