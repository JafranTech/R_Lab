# EX 1 - VARIABLES AND DATA TYPES

# declaring variables
name <- "Alice"
age <- 25
height <- 165.5
is_student <- TRUE

PI <- 3.14159265359
G <- 9.81

# vectors
char_vector <- c("apple", "banana", "cherry")
int_vector <- c(1, 2, 3, 4, 5)
double_vector <- c(1.5, 2.7, 3.0)
logical_vector <- c(TRUE, FALSE, TRUE, FALSE)

# display variables and types
cat("Name:", name, "| Type:", class(name), "\n")
cat("Age:", age, "| Type:", class(age), "\n")
cat("Height:", height, "| Type:", class(height), "\n")
cat("Is Student:", is_student, "| Type:", class(is_student), "\n")
cat("PI Constant:", PI, "| Type:", class(PI), "\n")
cat("Gravity Constant:", G, "| Type:", class(G), "\n")

# user input
name <- readline(prompt = "Input your name: ")
age <- as.integer(readline(prompt = "Input your age: "))

print(paste("My name is", name, "and my age is", age))

print(R.version.string)

number_sequence <- seq(20, 50)

print(number_sequence)

mean_value <- mean(20:50)
print(mean_value)

sum_value <- sum(20:50)
print(sum_value)
