# Program 5: Seasonal Adjustment

# Create quarterly sales data
sales <- c(100, 120, 140, 110,
           120, 145, 165, 130,
           140, 160, 180, 150,
           160, 185, 200, 170)

# Convert data into time series
sales_ts <- ts(sales,
               start = c(2022, 1),
               frequency = 4)

# Display original data
print("Original Data:")
print(sales_ts)

# Decompose the time series
result <- decompose(sales_ts)

# Obtain seasonal component
seasonal <- result$seasonal

# Display seasonal component
print("Seasonal Component:")
print(seasonal)

# Calculate seasonally adjusted data
adjusted <- sales_ts - seasonal

# Display adjusted data
print("Seasonally Adjusted Data:")
print(adjusted)

# Plot adjusted data
plot(adjusted,
     main = "Seasonally Adjusted Sales",
     xlab = "Year",
     ylab = "Sales",
     type = "o")

grid()