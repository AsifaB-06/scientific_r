# Program 9: Candidate ARIMA Model

sales <- c(120,125,132,140,151,160,172,185,197,210)

# Time series
sales.ts <- ts(sales, start=2015, frequency=1)

# Original series
plot(sales.ts, type="o",
     main="Original Time Series",
     xlab="Year", ylab="Sales")

# Differencing
sales.diff <- diff(sales.ts)
plot(sales.diff, type="o",
     main="Differenced Series",
     xlab="Year", ylab="Differenced Sales")

# ACF and PACF
acf(sales.diff)
pacf(sales.diff)

# ARIMA model
library(forecast)
fit <- Arima(sales.ts, order=c(0,1,1))
summary(fit)

# Forecast next 5 years
forecast.values <- forecast(fit, h=5)
print(forecast.values)

# Forecast plot
plot(forecast.values,
     main="ARIMA Forecast")