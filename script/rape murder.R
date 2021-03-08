"The data used in this script is the USArrests data processed with the README
script."

#Finding correlations
cor(data$Murder, data$Rape) #0.5635788

#Creating scatter plot of Murder and Rape
ggplot(data, aes(x = Murder, y = Rape)) +
  geom_point(color = "#ff6262", size = 2) +
  geom_smooth(method = "lm", se = FALSE) +
  xlab("Murder Rate") +
  ylab("Rape Rate") +
  ggtitle("Murder and Rape Rate") +
  theme_bw()

"The plot shows that as murder rate increases, rape rate also increases. This
is very logical. Of course as people are more willing to commit crime, they
are also more willing to commit other crime."

#Creating linear model to predict murder rate based on rape rate
MRmodel <- lm(Murder ~ Rape, data)
summary(MRmodel)

"We get a model with Adjusted R-squared:  0.3034. The model is Murder = 2.22367
+ 0.26207 * Rape. This is a bad model and certainly not good enough to be used
in the real world."