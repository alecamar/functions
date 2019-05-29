
cleanSlivers <- function(sp.obj, buf.size) {
    sp.obj.erode <- gBuffer(sp.obj, byid=TRUE, width = -buf.size) #add the byid=TRUE
    sp.obj.clean <- gBuffer(sp.obj.erode, byid=TRUE, width = buf.size) #add the byid=TRUE
}
