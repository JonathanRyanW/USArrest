"The data used in this script is the USArrests data processed with the README
script."

#Finding correlation
cor(data$Murder, data$UrbanPop) #0.06957262

"This is a very weak positive correlation. It is interesting the fact that the
correlation is positive, but it is too weak to make any meaningful inference."

#Creating scatter plot of Murder and UrbanPop
ggplot(data, aes(x = UrbanPop, y = Murder)) +
  geom_point(color = "#ff6262", size = 2) +
  geom_smooth(method = "lm", se = FALSE) +
  xlab("Population (Hundreds of Thousands)") +
  ylab("Murder Rate") +
  ggtitle("Population and Murder Rate") +
  theme_bw()

"The regression line (blue) does shows that as population increases murder rate
does increase. However it is too weak to make any meaningful inference."

#Building a linear regression model to predict Murder rate based on UrbanPop
MUmodel <- lm(Murder ~ UrbanPop, data)
summary(MUmodel)

"The model is Murder = 6.41594 + 0.02093*UrbanPop. The Adjusted R-squared is
-0.01589. Very very bad model. We obviously need another variable."

"But this model is made under the linear relationship assumption. It could be
that the relationship is not linear. However at the moment i have not acquire
the skills needed to create a non-linear model. I will need to study and come
back to this project when i have the skills required."