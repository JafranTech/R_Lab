# =====================================================
# 8. LINEAR REGRESSION
# =====================================================

# STEP 1: CREATE DATASET
# Years_Exp = Input Variable
# Salary = Output Variable
data <- data.frame(
  Years_Exp = c(1, 2, 3, 4, 5, 6, 7, 8),
  Salary = c(30000, 35000, 40000, 45000, 50000, 55000, 60000, 65000)
)

# Display dataset
print(data)

# STEP 2: VISUALIZE DATA USING SCATTER PLOT
plot(
  data$Years_Exp,
  data$Salary,
  xlab = "Years of Experience",
  ylab = "Salary",
  main = "Experience vs Salary",
  col = "blue",
  pch = 19
)

# STEP 3: CREATE LINEAR REGRESSION MODEL
model <- lm(Salary ~ Years_Exp, data = data)

# STEP 4: DISPLAY MODEL SUMMARY
summary(model)

# STEP 5: DRAW REGRESSION LINE
abline(model, col = "red", lwd = 2)

# STEP 6: PREDICT NEW VALUES
new_data <- data.frame(
  Years_Exp = c(9, 10)
)
predicted_salary <- predict(model, newdata = new_data)
print(predicted_salary)

# STEP 7: DIAGNOSTIC PLOTS
par(mfrow = c(2, 2))
plot(model)
