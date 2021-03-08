"The data used in this script is the USArrests data processed with the README
script."

mean(data$UrbanPop) #65.54

"is this data in hundreds of thousands or what? I think it is because 65.54 * 50
= 3277. The US population is roughly 300 million. therefore it must be hundreds
of thousands since 3277 * 100000 = 327 700 000. Roughly 300 million."

#Creating a function to return the nth lowest population State
low_pop <- function(n){ #n is an integer
  data <- arrange(data, UrbanPop, State)
  return(data$State[n])
}

#Creating a function to return the nth highest population State
high_pop <- function(n){ #n is an integer
  data <- arrange(data, desc(UrbanPop), State)
  return(data$State[n])
}

#States with population below the mean
state_low_pop <- filter(data, UrbanPop <= mean(data$UrbanPop))$State

#States with population above the mean
state_high_pop <- filter(data, UrbanPop > mean(data$UrbanPop))$State

"22 states have population below the mean while 28 are above the mean"
