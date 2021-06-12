# get_file.R

get_file <- 
  function( i ){
    fname <- file.path( getwd(),
                        "data",
                        files[1])
    
    read_csv( fname ) %>% 
      select( -ABSOLUTE_ROWNUMBER  )
  }