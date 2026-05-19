# Load libraries
library(e1071)
library(caret)
library(ggplot2)

# Load dataset
data(iris)

# Train test split
set.seed(123)

splitIndex <- createDataPartition(
  iris$Species,
  p = 0.8,
  list = FALSE
)

train <- iris[splitIndex, ]
test <- iris[-splitIndex, ]

# View datasets
glimpse(train)
glimpse(test)

# Train Naive Bayes model
nb_model <- naiveBayes(
  Species ~ .,
  data = train
)

# Predict
nb_pred <- predict(nb_model, test)

# Confusion matrix
confusionMatrix(nb_pred,
                test$Species)

# New sample prediction
new_sample <- data.frame(
  Sepal.Length = 5.6,
  Sepal.Width = 2.8,
  Petal.Length = 4.9,
  Petal.Width = 1.8
)

predict(nb_model, new_sample)

# Plot graph
test$NB_Predicted <- nb_pred

ggplot(test,
       aes(x = Species,
           fill = NB_Predicted)) +
  geom_bar(position = "dodge") +
  labs(title = "Naive Bayes",
       y = "Count")