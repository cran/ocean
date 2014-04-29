\docType{methods}
\name{lines}
\alias{lines}
\alias{lines,fvcom.grid-method}
\title{Plot an instance of the \code{fvcom.grid} class and overlay the
trajectories given by \code{xy}.}
\arguments{
  \item{x}{A \code{fvcom.grid} instance}

  \item{xy}{A \code{list} with matrices \code{x} and
  \code{y} components that contain the trajectories to
  plot. The columns of \code{xy$x} are plotted against the
  columns of \code{xy$y}, so each particle trajectory
  should be in a column and each time index in a row.}

  \item{plot.units}{The units for plotting. Either 'm' for
  meters or 'll' for latitude and longitude.}

  \item{xy.units}{The units of \code{xy}. Either 'm' for
  meters or 'll' for latitude and longitude.}

  \item{...}{Additional arguments to be passed to
  \code{matlines}.}
}
\description{
  Plot an instance of the \code{fvcom.grid} class and
  overlay the trajectories given by \code{xy}.
}
\examples{
{
# Create a set of random trajectories.
nodes = get.nodes(ocean.demo.grid)
set.seed(1)
x = apply(matrix(rnorm(1000, 0, 0.01), 250), 2, cumsum) - 69.5
y = apply(matrix(rnorm(1000, 0, 0.01), 250), 2, cumsum) + 42.5
lines(ocean.demo.grid, list(x=x, y=y), lty=1)
}
}

