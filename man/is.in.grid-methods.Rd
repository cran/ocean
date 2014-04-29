\docType{methods}
\name{is.in.grid}
\alias{is.in.grid}
\alias{is.in.grid,fvcom.grid-method}
\title{Checks if the points (xy$x, xy$y) are in the \code{fvcom.grid} \code{grid}.}
\arguments{
  \item{grid}{A \code{fvcom.grid} instance.}

  \item{xy}{A \code{data.frame} with components \code{x}
  and \code{y} with the x and y locations of the points.}

  \item{units}{Either 'll' for latitude and longitude or
  'm' for meters.}
}
\value{
  A vector of logical values of length \code{nrow(xy)}. The
  ith element is \code{TRUE} if (\code{xy$x[i]},
  \code{xy$y[i]}) is in \code{grid} and \code{FALSE}
  otherwise.
}
\description{
  Checks if the points (xy$x, xy$y) are in the
  \code{fvcom.grid} \code{grid}.
}
\examples{
{
# Create a regular grid of test points
nodes = get.nodes(ocean.demo.grid)
lattice.grid = expand.grid(x=seq(min(nodes$x), max(nodes$x), len=25),
                           y=seq(min(nodes$y), max(nodes$y), len=25))
# Check which points are in the grid
in.grid = is.in.grid(ocean.demo.grid, lattice.grid, units="m")
# Plot the points that are in the grid
with(lattice.grid[in.grid,], plot(x, y))
}
}

