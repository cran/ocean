\name{fvcom.grid-class}
\alias{fvcom.grid-class}
\title{Finite Volume Community Ocean Model grid}
\description{
  \code{fvcom.grid} provides a represenation of the
  unstructured triangular sigma grid used by the Finite
  Volume Community Ocean Model (FVCOM). As a disclaimer,
  please note that the author of this package is a user of
  FVCOM, but is not affiliated with its development.
}
\section{Slots}{
  \describe{ \item{nodes.n}{The number of nodes in the
  grid.} \item{nodes.x}{x-coordinates of the nodes (m).}
  \item{nodes.y}{y-coordinates of the nodes (m).}
  \item{nodes.h}{z-coordinates (depth) of the nodes (m).}
  \item{nodes.lat}{Latitude of the nodes.}
  \item{nodes.lon}{Longitude of the nodes.}
  \item{elems.n}{Number of elements in the grid}
  \item{elems.v1}{1st set of node indices}
  \item{elems.v2}{2nd set of node indices}
  \item{elems.v3}{3rd set of node indices}
  \item{elems.size}{The area of each element (m^2)}.
  \item{proj}{A string that could be passed to
  proj4::project to convert x and y values to latitude and
  longitude.} }
}
\references{
  http://fvcom.smast.umassd.edu/FVCOM/
}

