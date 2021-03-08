"The data used in this script is the USArrests data processed with the README
script."

library(corrgram)
library(corrplot)

corr.plot <- corrplot(cor(data[,2:5]), method = "color")