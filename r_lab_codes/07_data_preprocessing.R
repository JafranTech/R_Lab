# =====================================================
# 7. DATA PREPROCESSING
# =====================================================

# Create sample dataset
data <- data.frame(
  ID = c(1, 2, 3, 4, 4),
  Name = c("Arun", "Ravi", "Kavin", "John", "John"),
  Age = c(21, NA, 22, 23, 23),
  Gender = c("Male", "male", "FEMALE", "Female", "Female"),
  Salary = c(25000, 30000, 28000, NA, NA)
)

# Display original dataset
print("Original Dataset")
print(data)

# Handling Missing Values
# Replace missing Age with mean Age
data$Age[is.na(data$Age)] <- mean(data$Age, na.rm = TRUE)

# Replace missing Salary with mean Salary
data$Salary[is.na(data$Salary)] <- mean(data$Salary, na.rm = TRUE)

# Remove Duplicate Rows
data <- unique(data)

# Standardize Text Data
data$Gender <- tolower(data$Gender)

# Convert Text to Factor
data$Gender <- as.factor(data$Gender)

# Feature Scaling (Normalization)
data$Salary_Normalized <-
  (data$Salary - min(data$Salary)) /
  (max(data$Salary) - min(data$Salary))

# Final Dataset
print("Preprocessed Dataset")
print(data)

# Structure of dataset
str(data)

# Summary statistics
summary(data)
