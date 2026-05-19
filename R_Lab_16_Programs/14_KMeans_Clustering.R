install.packages("ggplot2")
install.packages("dplyr")

library(ggplot2)
library(dplyr)

data(iris)

iris_k <- iris[, -5]

set.seed(123)

km <- kmeans(iris_k, centers = 3, nstart = 20)

iris_k$Cluster <- as.factor(km$cluster)

ggplot(iris_k,
       aes(x = Sepal.Length,
           y = Sepal.Width,
           color = Cluster)) +
  geom_point(size = 3)
