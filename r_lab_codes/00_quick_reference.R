# =====================================================
# QUICK REFERENCE GUIDE
# =====================================================

# MOST IMPORTANT FUNCTIONS
# =====================================================
# c()              - Combine values into vector
# print()          - Output
# cat()            - Formatted output
# matrix()         - Create matrix
# data.frame()     - Create table
# factor()         - Categorical data
# plot()           - Graph
# lm()             - Linear regression
# predict()        - Prediction
# ggplot()         - Advanced graph

# DATA TYPES
# =====================================================
name <- "Alice"          # Character/String
age <- 25                # Integer
height <- 165.5          # Numeric/Double
is_student <- TRUE       # Boolean/Logical

# VECTORS & OPERATIONS
# =====================================================
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(10, 20, 30, 40, 50)
print(vec1 + vec2)       # Element-wise addition
print(vec1 * 2)          # Multiply by scalar

# SEQUENCES & RANGES
# =====================================================
seq1 <- seq(1, 10)       # Sequence 1 to 10
seq2 <- 1:10             # Also 1 to 10
seq3 <- seq(0, 10, by = 2)  # Sequence with steps

# STATISTICAL FUNCTIONS
# =====================================================
x <- c(10, 20, 30, 40, 50)
mean(x)                  # Average
median(x)                # Middle value
max(x)                   # Maximum
min(x)                   # Minimum
sum(x)                   # Total
sd(x)                    # Standard deviation
var(x)                   # Variance

# STRING FUNCTIONS
# =====================================================
text <- "Hello World"
nchar(text)              # Length
toupper(text)            # Uppercase
tolower(text)            # Lowercase
substr(text, 1, 5)       # Extract substring
paste("Hello", "World")  # Combine strings
grep("World", text)      # Find pattern

# DATE FUNCTIONS
# =====================================================
today <- Sys.Date()      # Current date
now <- Sys.time()        # Current time
date1 <- as.Date("2026-05-01")  # Create date
format(today, "%d-%m-%Y")  # Format date

# CONDITIONAL STATEMENTS
# =====================================================
age <- 25
if (age >= 18) {
  print("Adult")
} else {
  print("Minor")
}

# Leap year check
year <- 2024
if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
  print("Leap Year")
} else {
  print("Not Leap Year")
}

# LOOPS
# =====================================================
# For loop - Fixed repetition
for (i in 1:5) {
  print(i)
}

# While loop - Condition based
i <- 1
while (i <= 5) {
  print(i)
  i <- i + 1
}

# COMMON OPERATIONS
# =====================================================
# Factorial
num <- 5
fact <- 1
for (i in 1:num) {
  fact <- fact * i
}
# Result: 120

# Fibonacci
a <- 0
b <- 1
cat(a, b)
for (i in 1:5) {
  c <- a + b
  cat(c)
  a <- b
  b <- c
}
# Result: 0 1 1 2 3 5 8 13

# DATA FRAME OPERATIONS
# =====================================================
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35),
  Salary = c(50000, 60000, 70000)
)
print(df)
print(df$Name)           # Access column
print(df[1, ])           # Access row
print(df[1, 2])          # Access cell

# MATRIX OPERATIONS
# =====================================================
mat <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
print(mat)
print(mat[1, ])          # First row
print(mat[, 1])          # First column
print(mat[1, 2])         # Element at [1,2]

# GRAPHICS (PLOTTING)
# =====================================================
# Simple plot
plot(1:10)

# Line plot
plot(1:10, type = "l", col = "blue", lwd = 2)

# Scatter plot
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)
plot(x, y, main = "Title", xlab = "X-axis", ylab = "Y-axis")

# Bar plot
data <- c(10, 20, 30, 40)
barplot(data, names.arg = c("A", "B", "C", "D"), col = "blue")

# Pie chart
pie(data, labels = c("A", "B", "C", "D"))

# REGRESSION
# =====================================================
# Simple Linear Regression
data <- data.frame(
  X = c(1, 2, 3, 4, 5),
  Y = c(2, 4, 6, 8, 10)
)
model <- lm(Y ~ X, data = data)
summary(model)
predict(model, newdata = data.frame(X = c(6, 7)))

# Multiple Linear Regression
data <- data.frame(
  X1 = c(1, 2, 3, 4, 5),
  X2 = c(10, 20, 30, 40, 50),
  Y = c(100, 200, 300, 400, 500)
)
model <- lm(Y ~ X1 + X2, data = data)
summary(model)

# DPLYR OPERATIONS (Requires: library(dplyr))
# =====================================================
# Filter rows
# filter(data, Salary > 45000)

# Select columns
# select(data, Name, Salary)

# Arrange/Sort
# arrange(data, desc(Salary))

# Mutate/Create column
# mutate(data, Bonus = Salary * 0.10)

# Group and Summarize
# data %>% group_by(Department) %>% summarize(AvgSalary = mean(Salary))

# COMMON ERRORS & FIXES
# =====================================================

# WRONG: File path with backslash
# read.csv("C:\Users\file.csv")
# RIGHT: Use forward slash or file.choose()
# read.csv("C:/Users/file.csv")
# read.csv(file.choose())

# WRONG: Using library without installing
# library(ggplot2)
# RIGHT: Install first, then load
# install.packages("ggplot2")
# library(ggplot2)

# WRONG: Missing na.rm parameter
# mean(c(1, 2, NA, 4))
# RIGHT: Use na.rm = TRUE
# mean(c(1, 2, NA, 4), na.rm = TRUE)

# GENERAL STRUCTURE FOR LAB PROGRAMS
# =====================================================
# 1. Load required libraries
# 2. Load or create dataset
# 3. Explore/visualize data
# 4. Apply transformation/model
# 5. Make predictions/process
# 6. Display results/graphs
# 7. Write conclusions

print("Quick Reference Guide Created!")
