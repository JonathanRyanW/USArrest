"The data used in this script is the USArrests data processed with the README
script."

mean(data$Murder) #7.788

#Creating a function to return the nth lowest murder rate State
low_murder <- function(n){ #n is an integer
  data <- arrange(data, Murder, State)
  return(data$State[n])
}

#Creating a function to return the nth highest murder rate State
high_murder <- function(n){ #n is an integer
  data <- arrange(data, desc(Murder), State)
  return(data$State[n])
}

#States with murder rate below the mean
state_low_murder <- filter(data, Murder <= mean(data$Murder))$State

#States with murder rate above the mean
state_high_murder <- filter(data, Murder > mean(data$Murder))$State

"27 states have murder rates below the mean while 23 are above the mean"