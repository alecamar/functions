######################################################################################################
###
### The functions to identify the stable polygons
### Edited on 23 of Feb 2015, to first make a buffer in of 0m, in order to avoid selfintersecting polygons
### There is also another version edited before
###
######################################################################################################
gStab <- function(X1, Y2) {
  #X1 <- gBuffer(X, byid=TRUE, width=0) # New version
  #Y2 <- gBuffer(Y, byid=TRUE, width=0) # New version
  #stab <- gIntersection(gUnaryUnion(X1), gUnaryUnion(Y2), byid = c(TRUE, TRUE)) # Editing. This is the former one. IT was working, but was colapsing all polygons in just one
  stab <- gIntersection(X1, Y2, byid = TRUE, drop_lower_td=TRUE) #Ok, this instead of the above line is working fine. Use this one with the prepMap.R function
  SpatialPolygons(c(if(is.null(stab)) NULL else stab@polygons)) 
}


##Alternative for the 1990-2001 maps

#gStab2