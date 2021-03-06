% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gtypes2genind.R
\name{gtypes2genind}
\alias{genind2gtypes}
\alias{gtypes2genind}
\title{Convert Between \code{gtypes} And \code{genind} objects.}
\usage{
gtypes2genind(x, type = c("codom", "PA"))

genind2gtypes(x)
}
\arguments{
\item{x}{either a \linkS4class{gtypes} or \linkS4class{genind} object
to convert from.}

\item{type}{a character string indicating the type of marker for 
\linkS4class{genind} objects: 'codom' stands for 'codominant' 
(e.g. microstallites, allozymes); 'PA' stands for 'presence/absence' 
markers (e.g. AFLP, RAPD).}
}
\description{
Convert a \code{gtypes} object to a \code{genind} object 
  and vice-versa.
}
\examples{
data(msats.g)

# Convert to genind
gi <- gtypes2genind(msats.g)
gi

# Convert to gtypes
gt <- genind2gtypes(gi)
gt

}
\author{
Eric Archer \email{eric.archer@noaa.gov}
}
\seealso{
\link{initialize.gtypes}, \link{df2gtypes}, 
  \link{sequence2gtypes}, \link{as.data.frame.gtypes}, 
  \link{gtypes2loci}
}

