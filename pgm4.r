# Create monthly sales data for two years
sales <- c(120, 130, 150, 180, 210, 250,
           270, 260, 220, 190, 160, 140,
           130, 140, 165, 195, 225, 265,
           285, 275, 235, 205, 175, 150)

# Create a time series object
sales_ts <- ts(sales,
               start = c(2023, 1),
               frequency = 12)

# Display the time series
print(sales_ts)

# Decompose the time series
decomp <- decompose(sales_ts)

# Display decomposition components
print(decomp)

# Plot the decomposition
plot(decomp)