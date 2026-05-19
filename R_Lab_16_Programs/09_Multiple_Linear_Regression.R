install.packages("caTools")
install.packages("ggplot2")

library(caTools)
library(ggplot2)

data <- data.frame(
  Years_Exp = c(1.1,1.3,1.5,2.0,2.2,2.9,3.0,3.2,3.2,3.7),
  Education_Level = c(12,12,14,16,16,14,14,16,18,18),
  Salary = c(39343,46205,37731,43525,39891,56642,60150,54445,64445,57189)
)

set.seed(123)

split <- sample.split(data$Salary, SplitRatio = 0.7)

trainingset <- subset(data, split == TRUE)

mlr_model <- lm(Salary ~ Years_Exp + Education_Level, data = trainingset)

summary(mlr_model)
