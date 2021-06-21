# get_month.R

require( tidyverse )

source('D:/R-Projects/Tornadoes/functions/specify_columns.R')

get_month <- function( file_path ){
      file_path
  
  read_csv( fp )  
}

fp <- file.path( getwd(),
                 "data",
                 "months",
                 "2000-01.csv")
tornadoes <- 
  get_month( fp )

spec( tornadoes )

tornadoes <- 
  tornadoes %>% 
    mutate



