#' @title Number Missing Data
#' @description Calculate the number of individuals with missing data by locus.
#'
#' @param g a \linkS4class{gtypes} object.
#' @param prop logical determining whether to return proportion missing.
#'
#' @return a vector of loci with number (or, if \code{prop = TRUE},
#'   the proportion) of individuals missing data for at least one allele.
#'
#' @author Eric Archer \email{eric.archer@@noaa.gov}
#'
#' @examples
#' data(msats.g)
#' 
#' numMissing(msats.g)
#' numMissing(msats.g, prop = TRUE)
#'
#' @export
#' 
numMissing <- function(g, prop = FALSE) {
  .countNAs <- function(locus, prop) {
    count <- sum(is.na(locus))
    if(prop) count <- count / length(locus)
    count
  }
  .applyPerLocus(.countNAs, g, prop = prop) / ploidy(g)
}