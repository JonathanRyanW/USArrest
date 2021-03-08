"The USArrests dataset is part of the base R distribution." 
data <- USArrests

"We will use these packages to analyze the data. Please load the packages
before reading the other scripts."
library(dplyr)
library(ggplot2)
library(caTools)

#Checking the classes
sapply(data, class)
"It seems that all the observation are already in their correct class"

#Checking for NAs
sapply(data, function(x){any(is.na(x))})
"There is no NA in the data. Quiet neat!"

"We don't need the rownames. We are going to turn the rownames into States
column and delete turn the rownames into simple integers from 1 to 50."
data$State <- rownames(data)
row.names(data) <- 1:50

#Reordering the columns
data <- select(data, State, Murder:Rape)