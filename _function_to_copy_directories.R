#######################################################################################################################
#######################################################################################################################
####
####
####        Function to copy a directory with no subdirectory
####
####
#######################################################################################################################
#######################################################################################################################


dir.copy<-function(nm, from, to){
  dir.create(paste(to, nm, sep="/"))
  lf <- dir(from)
    for (i in 1:length(lf)){
        file.copy(from=paste(from, lf[i], sep='/'), to=paste(paste(to, nm, sep="/"), lf[i], sep='/'), overwrite = FALSE)
      }
  }

#from<-"F:/_______Folder_Chapter_Amazon____back_to___dropbox/Chapter_Amazon/chapter_Amazon/data_use/move"
#to<-"F:/_______Folder_Chapter_Amazon____back_to___dropbox/Chapter_Amazon/chapter_Amazon/data_use"
#nm<-"move_v02"

#dir.copy(nm, from, to)

