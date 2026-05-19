# LINEAR REGRESSION

library(caTools)
library(ggplot2)

data <- data.frame(
Years_Exp = c(1.1,1.3,1.5,2.0,2.2,2.9),
Salary = c(39343,46205,37731,43525,39891,56642)
)

split <- sample.split(data$Salary, SplitRatio=0.7)

trainingset <- subset(data, split==TRUE)

testset <- subset(data, split==FALSE)

lm.r <- lm(formula = Salary ~ Years_Exp,
data = trainingset)

summary(lm.r)

new_data <- data.frame(Years_Exp = c(4.0,4.5))

predict(lm.r, newdata = new_data)

ggplot() +
geom_point(aes(x=trainingset$Years_Exp,
y=trainingset$Salary),
colour='red') +

geom_line(aes(x=trainingset$Years_Exp,
y=predict(lm.r,newdata=trainingset)),
colour='blue')
