# Load the data and libraries -----------------------------------------------------

library(tidyverse)
library(dplyr)
library(dslabs)
data(heights)
options(digits = 3)

# Data Exploration ----------------------------------------------------------------
str(heights)
head(heights)
summary(heights)
table(is.na(heights))
table(heights$sex)
