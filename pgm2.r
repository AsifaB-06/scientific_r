# Create data frame
sales_data <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Apr", "May", "Jun",
            "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"),
  Sales = c(120, 135, 128, 145, 160, 170,
            175, 180, 172, 185, 195, 210)
)

# Display the data
print(sales_data)

# Create time series object
sales_ts <- ts(sales_data$Sales,
               start = c(2023, 1),
               frequency = 12)

# Display the time series
print(sales_ts)

# Plot the time series
plot(sales_ts,
     main = "Monthly Sales Time Series",
     xlab = "Month",
     ylab = "Sales (₹ Thousand)",
     col = "blue",
     lwd = 2,
     type = "o")

# Add grid
grid()