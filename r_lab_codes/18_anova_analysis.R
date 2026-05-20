# =====================================================
# 18. ANOVA IN R
# =====================================================

# STEP 1: CREATE DATASET
marks <- c(85, 90, 88, 75, 78, 72, 92, 95, 94)
department <- factor(c(
  "IT", "IT", "IT",
  "CSE", "CSE", "CSE",
  "ECE", "ECE", "ECE"
))
data <- data.frame(marks, department)

# Display dataset
print(data)

# STEP 2: APPLY ANOVA
anova_model <- aov(
  marks ~ department,
  data = data
)

# STEP 3: DISPLAY RESULT
summary(anova_model)

# STEP 4: CREATE BOXPLOT
boxplot(
  marks ~ department,
  data = data,
  main = "ANOVA Analysis",
  xlab = "Department",
  ylab = "Marks",
  col = c("red", "blue", "green")
)

# =====================================================
# RESULT: ANOVA analysis performed successfully
# =====================================================
