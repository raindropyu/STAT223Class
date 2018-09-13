# Read in the data from "clothes.csv" file into a data.frame called "clothes".
# Remove all rows from the data.frame where the variable "Price" is empty,
# i.e., equal to "". 
install.packages("tidyverse") 
library(tidyverse)

clothes <- read.csv("files/clothes.csv") %>%
  filter(Price !="")

# Write a function called "num" that takes a character vector of prices as
# input, removes the dollar sign, and returns a numeric vector of prices.

num <- function(string) { 
  as.numeric(gsub("[(^0-9)])
  # Your code goes here.
} 



# Using the "num" function you just wrote, convert the variable "Price" in the
# clothes data.frame from a character vector to a numeric vector.


# Determine the standard deviation of the price of clothes for each part of the
# body, as indicated by the variable "Body.Location".

clothes %>%
  group_by(Body.Location) %>% 
  summerise(sd_price = sd(Price))
