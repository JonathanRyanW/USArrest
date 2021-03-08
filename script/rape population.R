"The data used in this script is the USArrests data processed with the README
script."

#Finding correlations
cor(data$UrbanPop, data$Rape) #0.4113412

"What is interesting about this value is that between rape, murder, and assault
rape is the one whose correlation with population is the strongest. My guess is
that as population increase, the number of beautiful women increase, the number
of beautiful women increase, the number of occurences of men looking at
beautiful women increase, the number of occurences of men thinking about sexual 
thoughts increases, the probability of rape occuring increases."

#Creating scatter plot of UrbanPop and Rape
ggplot(data, aes(x = UrbanPop, y = Rape)) +
  geom_point(color = "#ff6262", size = 2) +
  geom_smooth(method = "lm", se = FALSE) +
  xlab("Population (Hundreds of Thousands)") +
  ylab("Rape Rate") +
  ggtitle("UrbanPop and Rape Rate") +
  theme_bw()

"The plot shows that as population increases rape rate also increases."

#Creating linear model to predict rape rate based on population
RUmodel <- lm(Rape ~ UrbanPop, data)
summary(RUmodel)

"We get a model with Adjusted R-squared:  0.1519. The model is Rape = 3.78707
+ 0.26617 * Population. This is a bad model and certainly not good enough to be
used in the real world."