# =====================================================
# 4. DATA TRANSFORMATION
# =====================================================

# Load libraries
library(dplyr)
library(tidyr)

# Create dataset
data <- data.frame(
  ID = c(1, 2, 3, 4),
  Name = c("Arun", "Ravi", "Kavin", "John"),
  Department = c("IT", "HR", "IT", "Sales"),
  Salary = c(50000, 40000, 60000, 45000),
  Age = c(22, 24, 23, 25)
)

# Display original dataset
print("Original Dataset")
print(data)

# arrange() - Sort salary in descending order
print("Arrange Function")
print(arrange(data, desc(Salary)))

# select() - Select specific columns
print("Select Function")
print(select(data, Name, Salary))

# filter() - Filter rows based on condition
print("Filter Function")
print(filter(data, Salary > 45000))

# mutate() - Create new column
print("Mutate Function")
print(mutate(data, Bonus = Salary * 0.10))

# group_by() and summarize()
print("Group By and Summarize Function")
print(
  data %>%
    group_by(Department) %>%
    summarize(AverageSalary = mean(Salary))
)
