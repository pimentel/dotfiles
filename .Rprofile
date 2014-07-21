options(repos = structure(c(CRAN="http://cran.cnr.berkeley.edu")))

options(chmhelp=TRUE) 

# options(help_type = "html")
options(max.print = 500)
options(width = 100)
options(device = "quartz") 
options(prompt = "R> ") 

.First <- function() 
{
    requiredPkgs <- c("data.table",
                      "devtools",
                      "ggplot2",
                      "plyr",
                      "reshape2",
                      "roxygen2",
                      "haRold")
    installed <- utils::installed.packages()[,1]
    reqInstalled <- requiredPkgs %in% installed
    if (any(!reqInstalled))
    {
        reqNotInstalled <- requiredPkgs[!reqInstalled]
        warning("\n\tThe following required packages were unavailable and installed:\n\t\t",
                paste(reqNotInstalled, collapse = " "))
        utils::install.packages(reqNotInstalled)
    }

    options(defaultPackages = c(getOption("defaultPackages"), requiredPkgs))
}


# ask GC nicely to run
cleanMem <- function(n=10) { for (i in 1:n) gc() }

object.sizes <- function()
{
    return(rev(sort(sapply(ls(envir=.GlobalEnv), function (object.name) 
        object.size(get(object.name))))))
}

# less annoying behavior for head on a list
head.list <- function(obj, n = 6L, ...)
{
    stopifnot(length(n) == 1L)
    origN <- n
    n <- if (n < 0L)
        max(length(obj) + n, 0L)
    else min(n, length(obj))
    lapply(obj[seq <- len(n)], function(x)
           {
               tryCatch({
                   head(x, origN, ...)
               }, error = function(e) {
                   x
               })
           })
}
environment(head.list) <- asNamespace('utils')

# http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/#a-colorblind-friendly-palette 
cbbPalette <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7", "#000000")
