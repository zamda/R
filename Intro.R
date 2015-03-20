myfunction <- function() {
  x <- rnorm(100)
  mean(x)
}

second <- function(x) {
  x + rnorm(length(x))
}


above <- function(x,n) {
  use <- x > n
  x[use]
}

pollutantmean <- function(directory, pollutant, id = 1:332) {
  for (i in seq_along(id)) {
    path <- file.path(directory, id)
    if (!exists("dataset")) {
      dataset <- read.csv(path)
    }else{
      dataset <- rbind(dataset, read.csv(path))
    }
  }
  dataset
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
}