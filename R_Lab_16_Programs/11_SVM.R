install.packages("e1071")
install.packages("caret")

library(e1071)
library(caret)

data(iris)

set.seed(123)

trainIndex <- createDataPartition(iris$Species, p = .8, list = FALSE)

train <- iris[trainIndex, ]
test <- iris[-trainIndex, ]

svm_model <- svm(Species ~ ., data = train, kernel = "linear")

svm_pred <- predict(svm_model, test)

confusionMatrix(svm_pred, test$Species)
