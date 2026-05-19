# CONDITIONAL AND ITERATIVE STATEMENTS

age <- as.integer(readline(prompt = "Enter your age: "))

if(age >= 18)
{
  print("Eligible to vote")
}
else
{
  print("Not eligible")
}

year <- as.integer(readline(prompt = "Enter year: "))

if((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0))
{
  print("Leap year")
}
else
{
  print("Not leap year")
}

marks <- c(89,95,67,32,56)

for(i in 1:length(marks))
{
  cat("Mark", i, "=", marks[i], "\n")
}

i <- 1

while(i <= 10)
{
  print(i)
  i <- i + 1
}

factorial_calc <- function(num)
{
  fact <- 1

  for(i in 1:num)
  {
    fact <- fact * i
  }

  return(fact)
}

num <- as.integer(readline(prompt = "Enter number: "))

result <- factorial_calc(num)

cat("Factorial =", result)
