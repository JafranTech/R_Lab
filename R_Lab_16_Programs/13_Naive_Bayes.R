install.packages("e1071")
install.packages("caret")

library(e1071)
library(caret)

data(iris)

set.seed(123)

splitIndex <- createDataPartition(iris$Species, p = 0.8, list = FALSE)

train <- iris[splitIndex, ]
test <- iris[-splitIndex, ]

nb_model <- naiveBayes(Species ~ ., data = train)

nb_pred <- predict(nb_model, test)

confusionMatrix(nb_pred, test$Species)
