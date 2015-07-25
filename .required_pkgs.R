# To execute this script:
# Rscript --vanilla init.R

cran_pkgs <- c(
  "devtools",
  "ggplot2",
  "data.table",
  "plyr",
  "dplyr",
  "pryr",
  "Rcpp",
  "RcppArmadillo",
  "reshape2",
  "roxygen2"
  )

# GitHub is a bit weird since the package name can be different than the GitHub
# repo suffix. make sure the packages are in the same order for gh_pkgs and gh_repos
gh_pkgs <- c(
  "vimcom",
  "haRold"
  )

gh_repos <- c(
  "jalvesaq/VimCom",
  "pimentel/haRold"
  )

bioc_pkgs <- c(
  "GenomicFeatures",
  "AnnotationDbi",
  "DESeq2",
  "edgeR",
  "limma",
  "biomaRt",
  "GEOquery"
  )

get_missing <- function(required, get_index = FALSE) {
  installed <- utils::installed.packages()[,1]

  if (get_index) {
    return( which( !(required %in% installed) ) )
  } else {
    return( required[!(required %in% installed)] )
  }
}

########################################################################
# main
########################################################################

# CRAN
{
  cran_missing <- get_missing(cran_pkgs)
  if ( length(cran_missing) > 0) {
    utils::install.packages(get_missing(cran_pkgs))
  }
}

# GitHub
{
  for (repo in gh_repos[get_missing(gh_pkgs, TRUE)]) {
    devtools::install_github(repo)
  }
}

# Bioconductor
{
  bioc_missing <- get_missing(bioc_pkgs)
  if ( length(bioc_missing) > 0 ) {
    source("http://bioconductor.org/biocLite.R")
    biocLite( bioc_missing )
  }
}
