\docType{methods}
\name{image}
\alias{image}
\alias{image,fvcom.grid-method}
\title{Plot a \code{fvcom.grid} instance as a heatmap.}
\arguments{
  \item{x}{A \code{fvcom.grid} instance.}

  \item{z}{A vector to plot as a heatmap.}

  \item{units}{Either 'll' for latitude and longitude or
  'm' for meters.}

  \item{col}{A list of colors, such as that returned by
  bathy.colors.}

  \item{add}{Should the plot be added to the current plot?
  #'}

  \item{xlim}{x-limits for the plot.}

  \item{ylim}{y-limits for the plot.}

  \item{zlim}{z-limits for the plot.}

  \item{border.col}{Color of the element borders. If not
  provided the borders will be colored to match the
  adjacent polygons.}

  \item{border.lwd}{Line width of the element borders.}

  \item{bg.col}{Color of the background. The background is
  only plotted if add=F, otherwise bg.col is ignored.}
}
\description{
  Given a vector of data, this function plots the data as a
  heatmap on an unstructured grid. The length of the data
  vector must be as long as either the number nodes in the
  grid or the number of elements in the grid. The grid is
  currently stored as a data.frame, but will be converted
  to an S4 object in the future.
}
\examples{
{
  op = par(ask=TRUE)
  # Plot the grid in a single color
  image(ocean.demo.grid, col='white')
  # Plot the grid in bathy colors
  image(ocean.demo.grid)
  par(op)
}
}

