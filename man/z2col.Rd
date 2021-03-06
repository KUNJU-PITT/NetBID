% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pipeline_functions.R
\name{z2col}
\alias{z2col}
\title{Set Color Scale for Z Statistics Value}
\usage{
z2col(x, n_len = 60, sig_thre = 0.01, col_min_thre = 0.01,
  col_max_thre = 3, blue_col = brewer.pal(9, "Set1")[2],
  red_col = brewer.pal(9, "Set1")[1])
}
\arguments{
\item{x}{a vector of numerics, a vector of Z statistics.}

\item{n_len}{integer, number of unique colors. Default is 60.}

\item{sig_thre}{numeric, the threshold for significance (absolute value of Z statistics). Z values failed to pass the threshold will be colored "white".}

\item{col_min_thre}{numeric, the lower threshold for the color bar value. Default is 0.01.}

\item{col_max_thre}{numeric, the upper threshold for the color bar value. Default is 3.}

\item{blue_col}{a vector of characters, the blue colors used to show the negative Z values. Default is brewer.pal(9,'Set1')[2].}

\item{red_col}{a vector of characters, the red colors used to show positive Z values. Default is brewer.pal(9,'Set1')[1].}
}
\value{
Return a vector of color codes.
}
\description{
\code{z2col} is a helper function in \code{out2excel}. It defines the color scale of the Z statistics value.
}
\examples{
t1 <- sort(rnorm(mean=0,sd=2,n=100))
graphics::image(as.matrix(t1),col=z2col(t1))
}
