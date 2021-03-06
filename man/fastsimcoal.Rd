% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fastsimcoal.R
\name{fastsimcoal}
\alias{fastsimcoal}
\alias{fscRead}
\alias{fscWrite}
\title{Run fastsimcoal}
\usage{
fscWrite(pop.info, locus.params, mig.rates = NULL, hist.ev = NULL,
  label = NULL)

fscRead(file, locus.params)

fastsimcoal(pop.info, locus.params, mig.rates = NULL, hist.ev = NULL,
  label = NULL, quiet = TRUE, delete.files = TRUE, exec = "fsc252",
  num.cores = NULL)
}
\arguments{
\item{pop.info}{matrix of population sampling information created by the 
\code{\link{fscPopInfo}} function.}

\item{locus.params}{data.frame specifying loci to simulate created by the 
\code{\link{fscLocusParams}} function.}

\item{mig.rates}{a matrix or list of matrices giving the migration rates 
between pairs of populations.}

\item{hist.ev}{matrix of historical events created by the 
\code{\link{fscHistEv}} function.}

\item{label}{character string to label files with.}

\item{file}{filename to write to.}

\item{quiet}{logical. Run quietly?}

\item{delete.files}{logical. Delete files when done?}

\item{exec}{name of fastsimcoal executable.}

\item{num.cores}{number of cores to use.}
}
\description{
Run a fastsimcoal simulation and load results into a 
  \linkS4class{gtypes} object.
}
\note{
fastsimcoal is not included with \code{strataG} and must be downloaded 
  separately. Additionally, it must be installed such that it can be run from 
  the command line in the current working directory. See the vignette 
  for \code{external.programs} for installation instructions.
}
\examples{
\dontrun{
# Set fastsimcoal parameters
# Population information: 3 populations with Ne = 10,000, drawing 100 samples from each.
pop.info <- fscPopInfo(pop.size = rep(10000, 3), sample.size = rep(100, 3))

# Migration rates among the 3 populations
mig.rates <- matrix(c(0, 0.5, 0.005, 0.5, 0, 0.0005, 0.005, 0.0005, 0), ncol = 3)

# Define historical events in which populations diverged 2000 generations in past
hist.ev <- fscHistEv(
  num.gen = c(2000, 2000), source.deme = c(2, 1),
  sink.deme = c(1, 0), prop.migrants = 1
)

# Define 10 microsatellite loci, with random mutation rates
msat.params <- fscLocusParams(
  locus.type = "msat", num.loci = 1, 
  mut.rate = runif(10, 1e-7, 1e-4)
)

# Run simulation and display locus summary
sim.msats <- fastsimcoal(pop.info, msat.params, mig.rates, hist.ev)
summarizeLoci(sim.msats)
}

}
\author{
Eric Archer \email{eric.archer@noaa.gov}
}
\references{
Excoffier, L. and Foll, M (2011) fastsimcoal: a continuous-time 
  coalescent simulator of genomic diversity under arbitrarily complex 
  evolutionary scenarios Bioinformatics 27: 1332-1334.\cr
  \url{http://cmpg.unibe.ch/software/fastsimcoal2/}
}

