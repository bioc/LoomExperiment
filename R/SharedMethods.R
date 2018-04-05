## Validty for '_Experiment' classes

.valid.LoomExperiment <- function(x)
{
    NULL
}


## colGraphs/rowGraphs getters and replacers

.get.colGraphs <- function(x, ...)
{
    x@colGraphs
}

.replace.colGraphs <- function(x, ..., value)
{
    BiocGenerics:::replaceSlots(x, colGraphs=value, check=FALSE)
}

.get.rowGraphs <- function(x, ...)
{
    x@rowGraphs
}

.replace.rowGraphs <- function(x, ..., value)
{
    BiocGenerics:::replaceSlots(x, rowGraphs=value, check=FALSE)
}


## Miscellanious methods

.subset.LoomExperiment <- function(x, i, j, ...)
{
    if (!missing(i))
        rowGraphs(x) <- endoapply(rowGraphs(x), function(y) y[i,])
    if (!missing(j))
        colGraphs(x) <- endoapply(colGraphs(x), function(y) y[i,])
    callNextMethod()
}

.show.LoomExperiment <- function(object)
{
        scat <- function(fmt, vals=character(), exdent=2, ...)
    {
        vals <- ifelse(nzchar(vals), vals, "''")
        lbls <- paste(S4Vectors:::selectSome(vals), collapse=" ")
        txt <- sprintf(fmt, length(vals), lbls)
        cat(strwrap(txt, exdent=exdent, ...), sep="\n")
    }
    callNextMethod()
    if (length(object@rowGraphs) > 0)
        scat("rowGraphs(%d): %s\n", names(object@rowGraphs))
    else
        cat("rowGraphs(0): NULL\n")
    if (length(object@colGraphs) > 0)
        scat("colGraphs(%d): %s\n", names(object@colGraphs))
    else
        cat("colGraphs(0): NULL\n")
}