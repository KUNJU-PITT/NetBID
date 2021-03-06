% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pipeline_functions.R
\name{get_int_group}
\alias{get_int_group}
\title{Get interested phenotype groups from pData slot of the ExpressionSet object.}
\usage{
get_int_group(eset)
}
\arguments{
\item{eset}{an ExpressionSet object.}
}
\value{
Return a vector of phenotype groups which could be used for sample cluster analysis.
}
\description{
\code{get_int_group} is a function to extract interested phenotype groups from the ExpressionSet object
with 'cluster-meaningful' sample features.
}
\examples{
network.par <- list()
network.par$out.dir.DATA <- system.file('demo1','network/DATA/',package = "NetBID2")
NetBID.loadRData(network.par=network.par,step='exp-QC')
intgroups <- get_int_group(network.par$net.eset)
}
