\docType{methods}
\name{find.elem}
\alias{find.elem}
\alias{find.elem,fvcom.grid-method}
\title{Checks if the points (xy$x, xy$y) are in the \code{fvcom.grid} \code{grid}.}
\arguments{
  \item{grid}{A \code{fvcom.grid} instance.}

  \item{xy}{A \code{data.frame} with components \code{x}
  and \code{y} with the x and y locations of the points.}

  \item{units}{Either 'll' for latitude and longitude or
  'm' for meters.}
}
\value{
  A vector of integer values of length \code{nrow(xy)}. The
  values are indexes into the elements of grid.
}
\description{
  Given a grid and a point or set of points,
  \code{find.elem} returns the element number of each point
  in the grid. NA is returned for any point that does not
  lie within the grid. \code{x} and \code{y} must be the
  same length.
}
\examples{
{
# Create a regular matrix grid
nodes = get.nodes(ocean.demo.grid)
lattice.grid = expand.grid(x=seq(min(nodes$x), max(nodes$x), len=50),
                           y=seq(min(nodes$y), max(nodes$y), len=50))
elems = find.elem(ocean.demo.grid, lattice.grid, units="m")
# Plot the result
plot(lattice.grid$x, lattice.grid$y, pch=15,
     col=jet.colors(max(elems, na.rm=TRUE) + 2)[elems+2])
}
}

