# Program 3: 3-Point Moving Average

N <- c(55,42,36,40,50,92,36,22,44)

# Calculate moving average
moving_avg <- filter(N, rep(1/3,3), sides=2)

print(N)
print(moving_avg)

# Plot
plot(N, type="o",
     main="Original vs Moving Average",
     xlab="Time", ylab="Values")

lines(moving_avg, type="o")