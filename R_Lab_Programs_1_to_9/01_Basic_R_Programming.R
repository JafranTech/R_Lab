# BASIC R PROGRAMMING

name <- "Alice"
age <- 25
height <- 165.5
is_student <- TRUE

PI <- 3.14159
G <- 9.81

char_vector <- c("apple", "banana", "cherry")
int_vector <- c(1,2,3,4,5)
double_vector <- c(1.5,2.7,3.0)
logical_vector <- c(TRUE,FALSE,TRUE,FALSE)

cat("Name:", name, "\n")
cat("Age:", age, "\n")
cat("Height:", height, "\n")
cat("Student:", is_student, "\n")

name <- readline(prompt = "Enter your name: ")
age <- as.integer(readline(prompt = "Enter age: "))

print(paste("My name is", name, "and age is", age))

number_sequence <- seq(20,50)
print(number_sequence)

mean_value <- mean(20:50)
print(mean_value)

sum_value <- sum(20:50)
print(sum_value)
