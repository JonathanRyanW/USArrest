"The data used in this script is the USArrests data processed with the README
script."

#Finding correlation
cor(data$Assault, data$UrbanPop) #0.2588717

"So it turns out Assault rate is also positively correlated with the population.
This correlation is stronger than the previous correlation between murder rate
and population (0.069)."

"I have been thinking about the reason why it's positive. Could it be that the
more people that exists the more chance of conflict to arise and that conflict
results in crime? Or could it be that the more people exists, the more rich
people there are. Creating more opportunities for poor people to see rich people.
This occurrence then creates jealousy in the whole population, increasing crime
rate as poor people also want to be rich?"

"Nevertheless, the correlation is weak."

#Creating scatter plot for Assault rate and UrbanPop
ggplot(data, aes(x = UrbanPop, y = Assault)) +
  geom_point(color = "#ff6262", size = 2) +
  geom_smooth(method = "lm", se = FALSE) +
  xlab("Population (Hundreds of Thousands)") +
  ylab("Assault Rate") +
  ggtitle("Population and Assault Rate") +
  theme_bw()

"The regression line is going up as population increases. Of course, the
correlation is positive afterall."

AUmodel <- lm(Assault ~ UrbanPop, data)
summary(AUmodel)

"The model is Assault = 73.0766 + 1.4904 * UrbanPop. The Adjusted R-squared is
0.04758, this is very bad. Population is just not a good predictor for Assault
rate. We need more variables."

"But this model is made under the linear relationship assumption. It could be
that the relationship is not linear. However at the moment i have not acquire
the skills needed to create a non-linear model. I will need to study and come
back to this project when i have the skills required."