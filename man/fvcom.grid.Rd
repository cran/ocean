\name{fvcom.grid}
\alias{fvcom.grid}
\title{Create a new FVCOM grid instance from a FVCOM NetCDF output file.}
\usage{
  fvcom.grid(filename, proj)
}
\arguments{
  \item{filename}{The name of an output NetCDF file from
  FVCOM.}

  \item{proj}{A string to passed to proj4::project to
  convert x,y locations to latitude and longitude.}
}
\value{
  An instance of the \code{fvcom.grid} class.
}
\description{
  Create a new FVCOM grid instance from a FVCOM NetCDF
  output file.
}

