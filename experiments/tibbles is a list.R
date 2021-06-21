## Build example

require( tidyverse )

# Make sample data

set.seed( 5*4*3*1 + 1 )

A <- tibble( id <-  1:3,
             x  <- sample( letters, 3),
             y  <- sample( 60:250, 3 ),
             z  <- rnorm(  3, mean = 150, sd = 25 ))

B <- tibble( id <-  4:8,
             x  <- sample( letters, 5 ),
             y  <- sample( 60:250, 5 ),
             z  <- rnorm( 5, mean = 150, sd = 25 ))

C <- tibble( id = 9:12,
             x  <- sample( letters, 4),
             y  <- sample( 60:250, 3 ),
             z  <- rnorm(  4, mean = 150, sd = 25 ))

my_list <- list( tibble( id <-  1:3,
                         x  <- sample( letters, 3),
                         y  <- sample( 60:250, 3 ),
                         z  <- rnorm(  3, mean = 150, sd = 25 )),
                 tibble( id <-  4:8,
                         x  <- sample( letters, 5 ),
                         y  <- sample( 60:250, 5 ),
                         z  <- rnorm( 5, mean = 150, sd = 25 )),
                 tibble( id = 9:12,
                         x  <- sample( letters, 4),
                         y  <- sample( 60:250, 4 ),
                         z  <- rnorm(  4, mean = 150, sd = 25 )))

## Take list made of tibble and compress then into a single tibble.

combined_tibble <- column_bind( my_list )
