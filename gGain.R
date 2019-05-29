######################################################################################################
### The functions to identify the polygons that were gain
######################################################################################################

gGain <- function(X1, Y2) {
  #X1 <- gBuffer(X, byid=TRUE, width=0)
  #Y2 <- gBuffer(Y, byid=TRUE, width=0)
  #gain <-  gDifference(Y2, gUnionCascaded(X1), byid = TRUE)
  #gain <-  gDifference(Y2, X1, byid = TRUE)
  gain<-gDifference(Y2, gUnionCascaded(X1), byid = TRUE, drop_lower_td=TRUE)
  #SpatialPolygons(c(if(is.null(gain)) NULL else gain@polygons)) 
}

#proj4string(gain)<-"+proj=utm +zone=24 +south +ellps=aust_SA +units=m +no_defs"