############################### Libraries ####################
1) Tidyverse
install.packages("tidyverse")
library(tidyverse)
# Includes
# ggplot2- for plotting
# dplyr for data manipulation
# tidyr for tidy data
# readr for reading rectangular data
# purrr for working with functions and vector
# Tibble for modern day reimagining of data
# stringr for making working with strings easy
# forcats for solving common problems wit factors

2)




###############################  To get Proportion #############

prop.table(table(heights$sex))

################################ gives names of fields #############


names(data) 
############################### #Gives unique values in a list #############

unique(X)

################################ Gives Frequency Table #############

table(x) 

################################Gives 3rd quantile of data #############

quantile(x,3) 

############################### percentile #############
a=seq(.01,.99,.01)
quantile(data,a)

################################  Defining CDF #############

a <- seq(min(my_data), max(my_data), length = 100)    # define range of values spanning the dataset

cdf_function <- function(x) {    # computes prob. for a single value
    mean(my_data <= x)
}
cdf_values <- sapply(a, cdf_function)
plot(a, cdf_values)


############################### Defining Quantiles with Qnorm #################
The qnorm() function gives the theoretical value of a quantile with probability p of observing a value equal
to or less than that quantile value given a normal distribution with mean mu and standard deviation sigma:

qnorm(0.025)  ≈−1.96

#we give it probability it gives u value

############################### Defining Quantiles with Pnorm #################
pnorm(-1.96)≈0.025

#we give it x it gives us probability

#### We calculate theoritical quantiles assuming the data follows normal distribution

################











