\docType{methods}
\name{pdd}
\alias{pdd}
\alias{pdd,fvcom.grid-method}
\title{Plot the density of x and y on grid.}
\arguments{
  \item{grid}{A \code{fvcom.grid} instance.}

  \item{xy}{A \code{data.frame} with x and y location of
  points. NAs are not supported.}

  \item{npoints}{The number of points to scale the density
  plot by. This defaults to the number of points passed in,
  but it may be useful to set it to a different value if
  only a subset of the points are being plotted (e.g. some
  points are outside of the domain).}

  \item{res}{The resolution of the plot in the same
  dimensions as \code{xy} is given. Square boxes will be
  plotted with each side of length \code{res}.}

  \item{sigma}{The standard deviation of the Gaussian
  smoothing filter to be applied. If no filter is required,
  set sigma=0. The units should be the same as for
  \code{res}.}

  \item{log}{Should the density be log10 transformed before
  plotting?}

  \item{bg.col}{The background color.}

  \item{col}{A list of colors, such as that returned by
  heat.colors.}

  \item{add}{Should the plot be added to the current plot?}

  \item{xlim}{x-limits for the plot.}

  \item{ylim}{y-limits for the plot.}

  \item{lim.units}{Units for xlim and ylim. One of 'm'
  (meters) or 'll' (latitude and longitude).}

  \item{zlim}{z-limits for the plot.}
}
\description{
  Plots the distribution of x and y on grid. This function
  follows the method described in Simons et al 2013: first
  vertically integrating the data, then dividing by the
  number of particles spawned, and finally applying an
  Gaussian blur filter. The coordinates should be passed in
  as x,y in meters, then are inverse projected into
  lat/long using the PROJ.4 library.
}
\examples{
{
# Generate artificial data from a Gaussian distribution
nodes = get.nodes(ocean.demo.grid)
set.seed(1)
x = rnorm(50000, mean(nodes$x), sd(nodes$x))
y = rnorm(50000, mean(nodes$y), sd(nodes$y))
# Plot the density of the mixture
res = (max(nodes$x) - min(nodes$x)) / 50
grd = pdd(ocean.demo.grid, data.frame(x=x, y=y), res=res, sigma=5)
}
}
\references{
  { Simons, R.D. and Siegel, D.A. and Brown K.S. 2013 Model
  sensitivity and robustness in the estimation of larval
  transport: A study of particle tracking parameters
  \emph{J. Marine Systems} 119--120: 19--29. }
}

