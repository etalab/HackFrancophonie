# R script which reads all local ccib csv files and export a single csv
library(magrittr)
library(readr)
library(plyr)
library(dplyr)

# collect the list of local csv files
ccib <- list.files(path = "data/ccib", pattern = "^tabula")

# get the names of variables in each csv
llply(ccib, function(x) {names(read_csv(paste0("data/ccib/", x)))})

# function which read a file and rename and select the good variables
read_ccib <- function(file) {
  read_csv(paste0("data/ccib/", file)) %>%
    select("numero"  = 1, 
           "denomination" = Dénomination, 
           "adresse" = Adresse, 
           "activites" = Activités, 
           "type" = Type, 
           "secteur" = Secteur, 
           "ifu" = IFU) 
  }

# testing the function
##read_ccib(file = ccib[1])

# read all files
list_ccib <- llply(ccib, read_ccib)

# combine all datasets 
df_ccib <- do.call(rbind, list_ccib)

# export this table to a single csv file
write_csv(df_ccib, "data/ccib/ccib.csv")
