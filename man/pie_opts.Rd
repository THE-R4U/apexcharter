% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apex-options.R
\name{pie_opts}
\alias{pie_opts}
\title{Pie options}
\usage{
pie_opts(size = NULL, donut = NULL, customScale = NULL,
  offsetX = NULL, offsetY = NULL, dataLabels = NULL, ...)
}
\arguments{
\item{size}{Numeric. Custom size of the pie which will override the default size calculations.}

\item{donut}{List with two fields \code{donutSize} (Donut / ring size in percentage relative to the total pie area.)
and \code{background} (The background color of the pie).}

\item{customScale}{Numeric. Transform the scale of whole pie/donut overriding the default calculations.}

\item{offsetX}{Numeric. Sets the left offset of the whole pie area.}

\item{offsetY}{Numeric. Sets the top offset of the whole pie area.}

\item{dataLabels}{List with field \code{offset} (Numeric, Offset by which labels will move outside / inside of the donut area)}

\item{...}{Additional parameters.}
}
\description{
Use these options in \code{\link{ax_plotOptions}}.
}
\note{
See \url{https://apexcharts.com/docs/options/plotoptions/pie/}.
}
