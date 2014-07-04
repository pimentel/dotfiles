options(repos=structure(c(CRAN="http://cran.cnr.berkeley.edu")))

options(chmhelp=TRUE) 

# options(help_type = "html")
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
                      "roxygen2")
    installed <- utils::installed.packages()[,1]
    reqInstalled <- requiredPkgs %in% installed
    if (any(!reqInstalled))
    {
        reqNotInstalled <- requiredPkgs[!reqInstalled]
        warning("\n\tThe following required packages were unavailable and installed:\n\t\t",
                reqNotInstalled)
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

# http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/#a-colorblind-friendly-palette 
cbbPalette <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7", "#000000")


