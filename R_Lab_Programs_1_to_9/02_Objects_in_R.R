# OBJECTS IN R

vec1 <- c(1,2,3,4,5)
vec2 <- c("apple","banana","cherry")

print(vec1)
print(vec2)

print(typeof(vec1))
print(length(vec1))

a <- c(1,3,5,7)
b <- c(2,4,6,8)

print(a+b)
print(a-b)
print(a*b)
print(a/b)

list_data <- list("Red","Green",c(21,32,11),TRUE)

print(list_data)

P <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)

print(P)

a <- array(c("green","yellow"), dim = c(3,3,2))

print(a)

apple_colors <- c('green','green','yellow','red')

factor_apple <- factor(apple_colors)

print(factor_apple)

Name <- c("A","B","C")
Marks <- c(90,85,95)

info <- data.frame(Name,Marks)

print(info)
