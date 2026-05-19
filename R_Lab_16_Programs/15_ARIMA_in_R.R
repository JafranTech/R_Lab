install.packages("forecast")

library(forecast)

data <- c(120,135,150,170,165,180,200,220,210,230,250,270)

ts_data <- ts(data, start = c(2025,1), frequency = 12)

plot(ts_data)

fit <- auto.arima(ts_data)

summary(fit)

forecast_values <- forecast(fit, h = 5)

print(forecast_values)

plot(forecast_values)
