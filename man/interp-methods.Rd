\docType{methods}
\name{interp}
\alias{interp}
\alias{interp,fvcom.grid-method}
\title{Convert a single scalar or node based quantity to element based.}
\arguments{
  \item{grid}{An fvcom.grid instance.}

  \item{x}{A vector of length 1 or \code{length
  get.nnodes(grid)}}
}
\value{
  A vector of length \code{get.nelems(grid)}
}
\description{
  The length of \code{x} determines how it will be treated.
  If \code{x} has length 1, it is returned as a single
  color. If the length of \code{x} is the number of nodes
  in the grid, its value for each element is calculated as
  the average of the value at the adjoining nodes. If the
  length of \code{x} is the number of elements in the grid,
  it is returned as is. Any other values throw an error.
}

