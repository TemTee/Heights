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
plot(heights$sex, heights$height)
heights %>% filter(sex == "Female") %>% 
  summarise(avg = mean(height),
            stnd_dv = sd(height),
            quadrant = quantile(height, c(0,0.5,1)))

heights %>% filter(sex == "Male") %>% 
  summarise(avg = mean(height),
            stnd_dv = sd(height),
            quadrant = quantile(height, c(0,0.5,1)))
