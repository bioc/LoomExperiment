## colGraphs/rowGraphs getters and setters

setGeneric("colGraphs", function(x, ...) standardGeneric("colGraphs"))
setGeneric("colGraphs<-", function(x, ..., value) standardGeneric("colGraphs<-"))

setGeneric("rowGraphs", function(x, ...) standardGeneric("rowGraphs"))
setGeneric("rowGraphs<-", function(x, ..., value) standardGeneric("rowGraphs<-"))

setGeneric("import.loomFile", function(con, ...) standardGeneric("import.loomFile"))

## exportLoom

setGeneric(".exportLoom",
    function(object, con = tempfile(), name, ...) standardGeneric(".exportLoom"),
    signature = "object"
)