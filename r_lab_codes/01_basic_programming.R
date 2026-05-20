# =====================================================
# 1. BASIC R PROGRAMMING
# =====================================================

# Storing different data types
name <- "Alice"
age <- 25
height <- 165.5
is_student <- TRUE

# Constants
PI <- 3.14159
G <- 9.81

# Vector - multiple values together
char_vector <- c("apple", "banana", "cherry")
int_vector <- c(1, 2, 3, 4, 5)

# Display values
cat("Name:", name, "\n")
cat("Age:", age, "\n")

# Taking user input (uncomment to use interactively)
# name <- readline(prompt = "Enter your name: ")
# age <- as.integer(readline(prompt = "Enter age: "))
# print(paste("My name is", name, "and age is", age))

# Sequence from 20 to 50
number_sequence <- seq(20, 50)
print(number_sequence)

# Average
mean_value <- mean(20:50)
print(mean_value)

# Total sum
sum_value <- sum(20:50)
print(sum_value)
