% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/daymet_grid_tmean.r
\name{daymet_grid_tmean}
\alias{daymet_grid_tmean}
\title{Averages tmax and tmin 'Daymet' gridded products}
\usage{
daymet_grid_tmean(path = tempdir(), product, year, internal = FALSE)
}
\arguments{
\item{path}{full path location of the daymet tiles (default = tempdir())}

\item{product}{either a tile number or a ncss product name}

\item{year}{which year to process}

\item{internal}{\code{TRUE} / \code{FALSE} (if \code{FALSE},
write the output to file)
using the Daymet file format protocol.}
}
\description{
Combines data into a single mean daily temperature (tmean) 
gridded output (geotiff) for easy post processing and modelling. 
Optionally a raster object is returned to the current workspace.
}
\examples{

\dontrun{
# This code calculates the mean temperature
# for all daymet tiles in a user provided
# directory. In this example we first
# download tile 11935 for tmin and tmax

# download a tile
download_daymet_tiles(tiles = 11935,
                      start = 1980,
                      end = 1980,
                      param = c("tmin","tmax"),
                      path = tempdir())

# calculate the mean temperature and export
# the result to the R workspace (internal = TRUE)
# If internal = FALSE, a file tmean_11935_1980.tif
# is written into the source path (path_with_daymet_tiles)
tmean <- daymet_grid_tmean(path = tempdir(),
                          tile = 11935,
                          year = 1980,
                          internal = TRUE)
}
}
\keyword{daily}
\keyword{mean}
\keyword{modelling,}
\keyword{temperature}
