"The data used in this script is the USArrests data processed with the README
script."

mean(data$Assault) 170.76

#Creating a function to return the nth lowest Assault rate State
low_assault <- function(n){ #n is an integer
  data <- arrange(data, Assault, State)
  return(data$State[n])
}

#Creating a function to return the nth highest Assault rate State
high_assault <- function(n){ #n is an integer
  data <- arrange(data, desc(Assault), State)
  return(data$State[n])
}

#States with Assault rate below the mean
state_low_Assault <- filter(data, Assault <= mean(data$Assault))$State

#States with Assault rate above the mean
state_high_Assault <- filter(data, Assault > mean(data$Assault))$State

"23 states have Assault rates below the mean while 27 are above the mean"