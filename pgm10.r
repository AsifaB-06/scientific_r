# Annual sales data 
sales <- c(120,125,132,140,151,160,172,185,197,210) 

# Create time series 
sales.ts <- ts(sales, start=2015, frequency=1) 

# Plot original data 
plot(sales.ts, type="o", col="blue", main="Annual Sales") 

# Load package 
library(forecast) 

# Fit ARIMA model 
fit <- Arima(sales.ts, order=c(0,1,1)) 

# Display summary 
summary(fit) 

# Forecast next 5 years 
future <- forecast(fit,h=5) 

# Display forecast 
future 

# Plot forecast 
plot(future, main="5-Year Forecast Using ARIMA")