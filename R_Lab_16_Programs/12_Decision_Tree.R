install.packages("rpart")
install.packages("rpart.plot")
install.packages("caret")

library(rpart)
library(rpart.plot)
library(caret)

data(iris)

iris$Species <- as.factor(iris$Species)

tree_model <- rpart(Species ~ ., data = iris, method = "class")

predictions <- predict(tree_model, iris, type = "class")

conf_mat <- confusionMatrix(predictions, iris$Species)

print(conf_mat)

rpart.plot(tree_model)
