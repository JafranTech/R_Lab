# =====================================================
# 6. GRAPHICS IN R
# =====================================================

# Simple plot
plot(1:10)

# Line graph
plot(1:10, type = "l", col = "blue", lwd = 3)

# Scatter plot
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)
plot(x, y)

# Pie chart
x <- c(10, 20, 30, 40)
labels <- c("A", "B", "C", "D")
pie(x, labels)

# Bar plot
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)
barplot(y, names.arg = x, col = "blue")
