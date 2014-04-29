\name{filter2d}
\alias{filter2d}
\title{Applies a 2d Gaussian filter to \code{mat} with a standard deviation of r
cells.}
\usage{
  filter2d(mat, r)
}
\arguments{
  \item{mat}{The matrix to filter.}

  \item{r}{The standard deviation of the filter in matrix
  cells.}
}
\description{
  Applies a Gaussian blur to a 2D matrix. The matrix is
  first convoluted with the filter along rows, then along
  columns.
}

