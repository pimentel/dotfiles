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
                      "pryr",
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


# https://gist.github.com/pimentel/256fc8c9b5191da63819
#
#' Return the first or last part of a list
#'
#' Returns the first or last part of a list. Instead of returning the first
#' n entries as the standard head() does, it attempts to call head()
#' recursively on the entries in the list. If it fails, it will return the
#' particular entry (standard behavior).
#' @param obj a list object
#' @param n a single integer. If positive, prints the first n items for the
#' list and all entries in the list. If negative, prints all but the last
#' n items in the list.
#' @return a list of length n, with items in the list of length n
head.list <- function(obj, n = 6L, ...)
{
    stopifnot(length(n) == 1L)
    origN <- n
    n <- if (n < 0L)
        max(length(obj) + n, 0L)
    else min(n, length(obj))
    lapply(obj[seq_len(n)], function(x)
           {
               tryCatch({
                   head(x, origN, ...)
               }, error = function(e) {
                   x
               })
           })
}
environment(head.list) <- asNamespace('utils')

# http://stackoverflow.com/questions/1358003/tricks-to-manage-the-available-memory-in-an-r-session
# improved list of objects
.ls.objects <- function (pos = 1, pattern, order.by,
                        decreasing=FALSE, head=FALSE, n=5) {
    napply <- function(names, fn) sapply(names, function(x)
                                         fn(get(x, pos = pos)))
    names <- ls(pos = pos, pattern = pattern)
    obj.class <- napply(names, function(x) as.character(class(x))[1])
    obj.mode <- napply(names, mode)
    obj.type <- ifelse(is.na(obj.class), obj.mode, obj.class)
    obj.size <- napply(names, object.size)
    obj.dim <- t(napply(names, function(x)
                        as.numeric(dim(x))[1:2]))
    vec <- is.na(obj.dim)[, 1] & (obj.type != "function")
    obj.dim[vec, 1] <- napply(names, length)[vec]
    out <- data.frame(obj.type, obj.size, obj.dim)
    names(out) <- c("Type", "Size", "Rows", "Columns")
    if (!missing(order.by))
        out <- out[order(out[[order.by]], decreasing=decreasing), ]
    if (head)
        out <- head(out, n)
    out
}
# shorthand
lsos <- function(..., n=10) {
    .ls.objects(..., order.by="Size", decreasing=TRUE, head=TRUE, n=n)
}

# http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/#a-colorblind-friendly-palette 
cbbPalette <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7", "#000000")
