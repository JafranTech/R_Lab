# EX 2 - OBJECTS IN R

vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c("apple", "banana", "cherry")
vec3 <- 1:10
vec4 <- seq(from = 0, to = 100, by = 20)

print(vec1)
print(vec2)
print(vec3)
print(vec4)

print(typeof(vec1))
print(length(vec1))

print(vec1[3])
print(vec2[2])

a <- c(1, 3, 5, 7)
b <- c(2, 4, 6, 8)

print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a %% b)

list_data <- list("Red", "Green", c(21,32,11), TRUE, 51.23)
print(list_data)

P <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
print(P)

apple_colors <- c("green","green","yellow","red","red")
factor_apple <- factor(apple_colors)

print(factor_apple)

Name <- c("Shubham","Nishka","Gunjan","Sumit")
Address <- c("Moradabad","Etah","Sambhal","Khurja")
Marks <- c(255,355,455,655)

info <- data.frame(Name, Address, Marks)

print(info)
