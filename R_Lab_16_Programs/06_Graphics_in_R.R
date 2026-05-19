plot(1,5)

plot(c(1,8), c(3,4))

x <- c(1,2,3,4,7)
y <- c(1,4,5,6,3)

plot(x,y)

plot(1:10, type = "l")

x <- c(10,20,30,40)

mylabel <- c("Apples","Bananas","Cherries","Dates")

colors <- c("blue","yellow","green","black")

pie(x, label = mylabel, main = "Pie Chart", col = colors)

legend("bottomright", mylabel, fill = colors)

x <- c("A","B","C","D")
y <- c(2,4,6,8)

barplot(y, names.arg = x, col = "blue")
