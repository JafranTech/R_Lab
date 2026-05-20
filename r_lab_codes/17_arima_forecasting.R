# =====================================================
# 17. ARIMA IN R
# =====================================================

# STEP 1: INSTALL PACKAGE (run once)
# install.packages("forecast")

# STEP 2: LOAD LIBRARY
library(forecast)

# STEP 3: CREATE SAMPLE DATA
temp <- c(30, 31, 29, 28, 27, 26, 27, 28, 29, 30, 31, 32)

# STEP 4: CONVERT TO TIME SERIES
temp_ts <- ts(
  temp,
  start = c(2025, 1),
  frequency = 12
)

# STEP 5: BUILD ARIMA MODEL
model <- auto.arima(temp_ts)

# STEP 6: FORECAST NEXT 6 MONTHS
forecast_data <- forecast(model, h = 6)

# STEP 7: DISPLAY FORECAST
print(forecast_data)

# STEP 8: PLOT GRAPH
plot(forecast_data)

# =====================================================
# RESULT: ARIMA forecasting performed successfully
# =====================================================
