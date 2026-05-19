install.packages("caTools")
install.packages("ggplot2")

library(caTools)
library(ggplot2)

data <- data.frame(
  Years_Exp = c(1.1,1.3,1.5,2.0,2.2,2.9,3.0,3.2,3.2,3.7),
  Salary = c(39343,46205,37731,43525,39891,56642,60150,54445,64445,57189)
)

split <- sample.split(data$Salary, SplitRatio = 0.7)

trainingset <- subset(data, split == TRUE)

lm.r <- lm(formula = Salary ~ Years_Exp, data = trainingset)

summary(lm.r)

new_data <- data.frame(Years_Exp = c(4.0,4.5,5.0))

predicted_salaries <- predict(lm.r, newdata = new_data)

print(predicted_salaries)
