"The data used in this script is the USArrests data processed with the README
script."

mean(data$Rape) #21.232

#Creating a function to return the nth lowest Rape rate State
low_rape <- function(n){ #n is an integer
  data <- arrange(data, Rape, State)
  return(data$State[n])
}

#Creating a function to return the nth highest Rape rate State
high_rape <- function(n){ #n is an integer
  data <- arrange(data, desc(Rape), State)
  return(data$State[n])
}

#States with Rape rate below the mean
state_low_Rape <- filter(data, Rape <= mean(data$Rape))$State

#States with Rape rate above the mean
state_high_Rape <- filter(data, Rape > mean(data$Rape))$State

"29 states have Rape rates below the mean while 21 are above the mean"
