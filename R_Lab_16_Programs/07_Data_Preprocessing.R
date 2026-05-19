install.packages("caTools")

library(caTools)

df <- read.csv(file.choose())

df$Age[is.na(df$Age)] <- mean(df$Age, na.rm = TRUE)

df$Salary[is.na(df$Salary)] <- mean(df$Salary, na.rm = TRUE)

df$Country <- factor(df$Country,
                     levels = c("France","Spain","Germany"),
                     labels = c(1,2,3))

df$Purchased <- factor(df$Purchased,
                       levels = c("No","Yes"),
                       labels = c(0,1))

set.seed(123)

split <- sample.split(df$Purchased, SplitRatio = 0.8)

training_set <- subset(df, split == TRUE)

test_set <- subset(df, split == FALSE)

training_set[,2:3] <- scale(training_set[,2:3])

test_set[,2:3] <- scale(test_set[,2:3])
