"The data used in this script is the USArrests data processed with the README
script."

#Finding correlation between murder rate and assault rate
cor(data$Murder, data$Assault)

"Of course they are positively correlated. If a state has a high murder rate
that means the people there have more potential to commit other crimes,
including assault. But 0.8018733, this is a very high correlation!"

#Creating scatter plot of Murder and Assault
ggplot(data, aes(x = Murder, y = Assault)) +
  geom_point(color = "#ff6262", size = 2) +
  geom_smooth(method = "lm", se = FALSE) +
  coord_cartesian(xlim = c(0,18), ylim = c(0,350)) +
  xlab("Murder Rate") +
  ylab("Assault Rate") +
  ggtitle("Murder and Assault Rate") +
  theme_bw()

"The plot shows us that as Murder rate increases, so does Assault rate. The red
line is the regression line."

#Building a linear regression model to predict Assault rate based on Murder rate
MAmodel <- lm(Assault ~ Murder, data)
summary(MAmodel)

"The model is Assault = 51.27 + 15.34*Murder. The model has Adjusted R-squared:
0.6356. It is not too bad but definitely not good enough to be used in the real
world. We need more variables than Murder rate only."