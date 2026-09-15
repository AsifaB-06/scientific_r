# Program 8: ARIMA Differencing

sales <- c(120,125,132,140,
           151,160,172,185)

sales.ts <- ts(sales,
               start=2016,
               frequency=1)

# First difference
diff1 <- diff(sales.ts)

# Second difference
diff2 <- diff(sales.ts,
              differences=2)

print(diff1)
print(diff2)

# Plot original
plot(sales.ts,
     type="o",
     main="Original Series",
     xlab="Year",
     ylab="Sales")

# Plot first difference
plot(diff1,
     type="o",
     main="First Difference",
     xlab="Year",
     ylab="Difference")

# Plot second difference
plot(diff2,
     type="o",
     main="Second Difference",
     xlab="Year",
     ylab="Difference")