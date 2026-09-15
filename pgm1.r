# Program 1: Time Series Data Cleaning and Handling

data <- data.frame(
  Month = c("Jan","Feb","Mar","Apr","May","Jun"),
  Sales = c(120,135,NA,145,160,170)
)

# Remove missing values
data <- na.omit(data)

# Create time series
sales_ts <- ts(data$Sales,
               start=c(2023,1),
               frequency=12)

# Display and plot
print(data)
print(sales_ts)

plot(sales_ts,
     main="Monthly Sales Time Series",
     xlab="Month",
     ylab="Sales",
     type="o")