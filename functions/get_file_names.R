## list data director files

get_file_names <- 
  function(){
    path <- file.path( getwd(),
                       "data/months" )
    files <- dir( path )
  }