# IMPLEMENTATION OF KNN IN R

# Install packages
install.packages("class")
install.packages("caret")
install.packages("ggplot2")
install.packages("dplyr")

# Load libraries
library(class)
library(caret)
library(ggplot2)
library(dplyr)

# Load dataset
data(iris)

# View dataset
View(iris)

# Initial dataset visualization
ggplot(iris,
       aes(x = Sepal.Length,
           y = Sepal.Width,
           color = Species)) +
  geom_point(size = 3) +
  labs(title = "Sepal Length vs Sepal Width",
       x = "Sepal Length",
       y = "Sepal Width")

# Set seed
set.seed(123)

# Split dataset into training and testing
trainIndex <- createDataPartition(
  iris$Species,
  p = 0.8,
  list = FALSE
)

trainData <- iris[trainIndex, ]
testData <- iris[-trainIndex, ]

# Feature scaling
trainX <- scale(trainData[,1:4])

testX <- scale(
  testData[,1:4],
  center = attr(trainX, "scaled:center"),
  scale = attr(trainX, "scaled:scale")
)

# Class labels
trainY <- trainData$Species
testY <- testData$Species

# Apply KNN
knn_pred <- knn(
  train = trainX,
  test = testX,
  cl = trainY,
  k = 3
)

# Confusion Matrix
conf_mat <- confusionMatrix(
  knn_pred,
  testY
)

print(conf_mat)

# Accuracy metrics
metrics_df <- data.frame(
  Metric = c(
    "Accuracy",
    "Sensitivity",
    "Specificity"
  ),
  
  Value = c(
    conf_mat$overall["Accuracy"],
    mean(conf_mat$byClass[, "Sensitivity"]),
    mean(conf_mat$byClass[, "Specificity"])
  )
)

# Metrics bar graph
ggplot(metrics_df,
       aes(x = Metric,
           y = Value,
           fill = Metric)) +
  geom_bar(stat = "identity") +
  ylim(0,1) +
  labs(title = "KNN Model Performance Metrics",
       y = "Value") +
  theme_minimal()

# Visual classification output
test_plot <- data.frame(
  Sepal.Length = testData$Sepal.Length,
  Sepal.Width = testData$Sepal.Width,
  Species = knn_pred
)

ggplot(test_plot,
       aes(x = Sepal.Length,
           y = Sepal.Width,
           color = Species)) +
  geom_point(size = 4) +
  ggtitle("KNN Classification Output") +
  xlab("Sepal Length") +
  ylab("Sepal Width") +
  theme_minimal()