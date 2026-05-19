# GRAPHICS IN R

plot(1:10)

plot(1:10, type="l", col="blue", lwd=3)

x <- c(1,2,3,4,5)
y <- c(2,4,6,8,10)

plot(x,y)

x <- c(10,20,30,40)

labels <- c("A","B","C","D")

pie(x, labels)

x <- c("A","B","C","D")
y <- c(2,4,6,8)

barplot(y, names.arg=x, col="blue")
