# =====================================================
# 9. MULTIPLE LINEAR REGRESSION
# =====================================================

# STEP 1: CREATE DATASET
# Years_Exp and Education_Level are input variables
# Salary is output variable
data <- data.frame(
  Years_Exp = c(1.1, 1.3, 1.5, 2.0, 2.2),
  Education_Level = c(12, 12, 14, 16, 16),
  Salary = c(39343, 46205, 37731, 43525, 39891)
)

# Display dataset
print(data)

# STEP 2: VISUALIZE DATA
plot(
  data$Years_Exp,
  data$Salary,
  xlab = "Years of Experience",
  ylab = "Salary",
  main = "Experience vs Salary",
  col = "blue",
  pch = 19
)

# STEP 3: CREATE MULTIPLE LINEAR REGRESSION MODEL
mlr_model <- lm(
  Salary ~ Years_Exp + Education_Level,
  data = data
)

# STEP 4: DISPLAY MODEL SUMMARY
summary(mlr_model)

# STEP 5: PREDICT NEW VALUES
new_data <- data.frame(
  Years_Exp = c(4.0, 4.5),
  Education_Level = c(16, 18)
)
predicted_salary <- predict(
  mlr_model,
  newdata = new_data
)
print(predicted_salary)

# STEP 6: ACTUAL VS PREDICTED GRAPH
predicted_values <- predict(mlr_model)
plot(
  data$Salary,
  predicted_values,
  xlab = "Actual Salary",
  ylab = "Predicted Salary",
  main = "Actual vs Predicted Salary",
  col = "red",
  pch = 19
)

# Draw reference line
abline(a = 0, b = 1, col = "blue", lwd = 2)

# STEP 7: DIAGNOSTIC PLOTS
par(mfrow = c(2, 2))
plot(mlr_model)
