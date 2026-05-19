# MULTIPLE LINEAR REGRESSION

library(caTools)
library(ggplot2)

data <- data.frame(
Years_Exp = c(1.1,1.3,1.5,2.0,2.2),
Education_Level = c(12,12,14,16,16),
Salary = c(39343,46205,37731,43525,39891)
)

split <- sample.split(data$Salary,
SplitRatio = 0.7)

trainingset <- subset(data, split == TRUE)

testset <- subset(data, split == FALSE)

mlr_model <- lm(
Salary ~ Years_Exp + Education_Level,
data = trainingset
)

summary(mlr_model)

new_data <- data.frame(
Years_Exp = c(4.0,4.5),
Education_Level = c(16,18)
)

predict(mlr_model, newdata = new_data)

testset$Predicted_Salary <-
predict(mlr_model, newdata = testset)

ggplot(testset,
aes(x = Salary,
y = Predicted_Salary)) +

geom_point(color='blue') +

geom_abline(intercept = 0,
slope = 1,
color='red')
