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

2)ggthemes
3)ggrepel #for non overlapping
4)gridExtra



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

################ Standard Deviation #####################
sd(X)
###########To see the arguments############
args(func)
################ mad(x)- Mean Absolute Deviation ################
mad(x)
################# if mean=median and sd= mad ### Property of Normal Distribution


############# Defining Function in R ########################
f_name=function(input variables){
    
}

############### Components of a plot ######## 
#1) Data
#2) type of plot- scatter,line , boxplot
#3) Mapping
#4) Scale
#5) Labels, Title, Legend etc

First Step for a ggplot graph is defining a ggplot object
> ggplot(data)
> # is equivalent to data %>% ggplot()

# This ggplot object can be assigned to an object let's say it p
########### to get it's class we can write 
class(p) 

######## add layer by layer #####
# Add layers by adding +
# Usually first added layer defines geometry

#For Scatter plot
geom_point(x,y,alpha,colour,size)
geom_point(aes(col=region),size=3)

# aes connects data with what we see on the graph---aesthatic mappings----outcome of aes is often used as input of geometry function---recognizes variables from the 
# aes recognizes variable names from the data  

# Add label and text
geom_label(,size=) and geom_text(aes(population/10^6, total, label = abb),nudge_x=1)

# Scale
Scale_x_continuous(trans="log10")

# X and Y label
xlab("x_label")
ylab("y_label")

# Title
ggtitle("")

#Line
geom_abline

# HIstogram
geom_histogram(binwidth=1)

#Density
geom_density(fill="")

#qqplot
geom_qq

#grid.arrange(p1,p2,p3,ncol=3)
#group by a variable
#use group in aes mappin
#use fill in aes for different fills and alpha in density to increase transparency

# Using dplyr
s=heights%>%filter(sex=="Male")%>%summarize(average=mean(height),sddev=sd(height))

# dot place holder

# Summarizr into groups

heights %>% group_by(sex)
murders%>% arrange(population)%>%head()

########################################for descending order use desc(population)#######################################
######################################## nested sorting #######################################
######################################## top_n(10,murder) function #######################################
######################################## Create or transform variables #######################################
####################################### add a new column############################

####################################################################################co
############################ dplyr library #########################################
####################################################################################
mtcars %>% as_tibble() %>% mutate(
  cyl2 = cyl * 2,
  cyl4 = cyl2 * 2
)
######################################## modify a column#######################################
mtcars %>% as_tibble() %>% mutate(
  mpg = NULL,
  disp = disp * 0.0163871 # convert to litres
)
######################################## window functions are useful for grouped mutates#######################################
mtcars %>%
 group_by(cyl) %>%
 mutate(rank = min_rank(desc(mpg)))

######################################### You can drop variables by setting them to NULL#######################################
mtcars %>% mutate(cyl = NULL)
################################# transmute keeps only the variables you create################################
mtcars %>%
  transmute(displ_l = disp / 61.0237)
################################# Add label to the graph instead of legends #############################
geom_text(data=labels,aes(x,y,labels=country),size=5) + theme(legend.position="none")


###################### Rotate ticks################################
 theme(axis.text.x = element_text(angle = 90, hjust = 1))

########## to reorder ######## fac has factor levels anf value has value associated with each entry
fac=reorder(fac,value,FUN=mean)














