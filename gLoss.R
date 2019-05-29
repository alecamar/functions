######################################################################################################
### The functions to identify the polygons that were loss
######################################################################################################
gLoss <- function(X1, Y2) {
  #X1 <- gBuffer(X, byid=TRUE, width=0)
  #Y2 <- gBuffer(Y, byid=TRUE, width=0)
  loss <-  gDifference(X1, gUnionCascaded(Y2), byid = TRUE)
  SpatialPolygons(c(if(is.null(loss)) NULL else loss@polygons)) 
}

