# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

HoCalc <- function(nInd, locus, ploidy, strata, strataN) {
    .Call('strataG_HoCalc', PACKAGE = 'strataG', nInd, locus, ploidy, strata, strataN)
}

HsCalc <- function(alleleFreq, ploidy, strataN, harmN, Ho) {
    .Call('strataG_HsCalc', PACKAGE = 'strataG', alleleFreq, ploidy, strataN, harmN, Ho)
}

Hstats_C <- function(loci, strata) {
    .Call('strataG_Hstats_C', PACKAGE = 'strataG', loci, strata)
}

getMaxInt <- function(x) {
    .Call('strataG_getMaxInt', PACKAGE = 'strataG', x)
}

table2D <- function(x, y) {
    .Call('strataG_table2D', PACKAGE = 'strataG', x, y)
}

rowSumC <- function(x) {
    .Call('strataG_rowSumC', PACKAGE = 'strataG', x)
}

colSumC <- function(x) {
    .Call('strataG_colSumC', PACKAGE = 'strataG', x)
}

colMeanC <- function(x) {
    .Call('strataG_colMeanC', PACKAGE = 'strataG', x)
}

intOuterC <- function(x, y) {
    .Call('strataG_intOuterC', PACKAGE = 'strataG', x, y)
}

numOuterC <- function(x, y) {
    .Call('strataG_numOuterC', PACKAGE = 'strataG', x, y)
}

idStart <- function(id, ploidy) {
    .Call('strataG_idStart', PACKAGE = 'strataG', id, ploidy)
}

idGenotype <- function(locus, id, ploidy) {
    .Call('strataG_idGenotype', PACKAGE = 'strataG', locus, id, ploidy)
}

calcStrataN <- function(locus, strata, ploidy) {
    .Call('strataG_calcStrataN', PACKAGE = 'strataG', locus, strata, ploidy)
}

statChi2_C <- function(loci, strataMat) {
    .Call('strataG_statChi2_C', PACKAGE = 'strataG', loci, strataMat)
}

statFis_C <- function(loci, strataMat) {
    .Call('strataG_statFis_C', PACKAGE = 'strataG', loci, strataMat)
}

alleleFreqCalc <- function(locVec, strataRep) {
    .Call('strataG_alleleFreqCalc', PACKAGE = 'strataG', locVec, strataRep)
}

prHetCalc <- function(locus, nalleles, strata, nvec, ploidy) {
    .Call('strataG_prHetCalc', PACKAGE = 'strataG', locus, nalleles, strata, nvec, ploidy)
}

varCompCalc <- function(nvec, alleleFreq, prHet, r, nbar, rnbar, nc) {
    .Call('strataG_varCompCalc', PACKAGE = 'strataG', nvec, alleleFreq, prHet, r, nbar, rnbar, nc)
}

fstCalc <- function(loci, strata, ploidy) {
    .Call('strataG_fstCalc', PACKAGE = 'strataG', loci, strata, ploidy)
}

statFst_C <- function(loci, strataMat) {
    .Call('strataG_statFst_C', PACKAGE = 'strataG', loci, strataMat)
}

statFstPrime_C <- function(loci, strataMat) {
    .Call('strataG_statFstPrime_C', PACKAGE = 'strataG', loci, strataMat)
}

statGst_C <- function(loci, strataMat) {
    .Call('strataG_statGst_C', PACKAGE = 'strataG', loci, strataMat)
}

statGstPrime_C <- function(loci, strataMat, primeType) {
    .Call('strataG_statGstPrime_C', PACKAGE = 'strataG', loci, strataMat, primeType)
}

statGstDblPrime_C <- function(loci, strataMat) {
    .Call('strataG_statGstDblPrime_C', PACKAGE = 'strataG', loci, strataMat)
}

statJostD_C <- function(loci, strataMat) {
    .Call('strataG_statJostD_C', PACKAGE = 'strataG', loci, strataMat)
}

ssWPCalc <- function(strataFreq, strataHapFreq, hapDist) {
    .Call('strataG_ssWPCalc', PACKAGE = 'strataG', strataFreq, strataHapFreq, hapDist)
}

ssAPCalc <- function(strataFreq, strataHapFreq, hapDist) {
    .Call('strataG_ssAPCalc', PACKAGE = 'strataG', strataFreq, strataHapFreq, hapDist)
}

statPhist_C <- function(hapMat, strataMat, hapDist) {
    .Call('strataG_statPhist_C', PACKAGE = 'strataG', hapMat, strataMat, hapDist)
}

