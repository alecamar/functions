####################################################################################################
####################################################################################################
#####
#####         Clip a *polygon, by another polygon.
#####
#####
#####         clip.outside<-clip polygons, and include portions of fragments that are partially outside the clipped area
#####         If needed this function is on clip_function_for_polygons.R in ~/Computacao/R/ESPACIAL
#####
#####         clip<-clip polygons and crop the polygons that spams to outside the clipping area
#####
#####         http://stackoverflow.com/questions/15881455/how-to-clip-worldmap-with-polygon-in-r
#####
####################################################################################################
####################################################################################################

clip<-function(area2clip, clippingArea){

gI <- gIntersects(area2clip, clippingArea, byid = TRUE )
out <- lapply( which(gI) , function(x){ gIntersection( area2clip[x,] , clippingArea) } )

keep <- sapply(out, class)
out <- out[keep == "SpatialPolygons"]

clip.out.r <- SpatialPolygons(lapply( 1:length(out),             
                                      function(i) { 
                                        Pol <- slot(out[[i]], "polygons")[[1]]
                                        slot(Pol, "ID") <- as.character(i)
                                        Pol
                                      }
))

}
