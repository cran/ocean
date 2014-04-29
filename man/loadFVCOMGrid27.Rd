\name{loadFVCOMGrid27}
\alias{loadFVCOMGrid27}
\title{Load an FVCOM grid from a NetCDF output file.}
\usage{
  loadFVCOMGrid27(filename, proj)
}
\arguments{
  \item{filename}{The name of an output NetCDF file from
  FVCOM 2.7.}

  \item{proj}{A projection string which could be passed to
  \code{proj4::project} and converts between the x,y and
  lat,lon coordinate systems for this grid.}
}
\value{
  An instance of the \code{fvcom.grid} class.
}
\description{
  Loads enough of an FVCOM grid to use the other methods
  associated with the \code{fvcom.grid} class. The (x,y,h)
  locations of the nodes and their connections to form an
  unstructured triangular mesh are loaded.
}

