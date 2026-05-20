# =====================================================
# 3. CONDITIONAL & ITERATIVE STATEMENTS
# =====================================================

# IF ELSE
age <- as.integer(readline(prompt = "Enter age: "))
if (age >= 18) {
  print("Eligible to vote")
} else {
  print("Not eligible")
}

# LEAP YEAR
year <- as.integer(readline(prompt = "Enter year: "))
if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
  print("Leap Year")
} else {
  print("Not Leap Year")
}

# FOR LOOP
for (i in 1:5) {
  print(i)
}

# WHILE LOOP
i <- 1
while (i <= 10) {
  print(i)
  i <- i + 1
}

# FACTORIAL
num <- 5
fact <- 1
for (i in 1:num) {
  fact <- fact * i
}
print(fact)

# FIBONACCI
a <- 0
b <- 1
cat(a, b)
for (i in 1:8) {
  c <- a + b
  cat(c)
  a <- b
  b <- c
}
