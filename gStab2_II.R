######################################################################################################
### The functions to identify the stable polygons
######################################################################################################
gStab2 <- function(X, Y) {
  X1 <- gBuffer(X, byid=TRUE, width=0)
  Y2 <- gBuffer(Y, byid=TRUE, width=0)
  stab <- gIntersection(gUnionCascaded(X1), gUnionCascaded(Y2), byid = TRUE)
  stab<-stab@polyobj
}


##Alternative for the 1990-2001 maps

