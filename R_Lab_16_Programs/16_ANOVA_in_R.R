group <- c(rep("A",5), rep("B",5), rep("C",5))

score <- c(85,90,88,75,95,78,74,69,80,79,92,94,89,96,91)

data <- data.frame(group, score)

anova_model <- aov(score ~ group, data = data)

summary(anova_model)

boxplot(score ~ group,
        data = data,
        col = c("red","blue","green"),
        main = "ANOVA")
