# Program 6: Smoothing

sales <- c(120,125,130,128,135,140,
           145,150,148,155,160,165)

sales.ts <- ts(sales, frequency=12)

# Simple Exponential Smoothing
fit <- HoltWinters(sales.ts,
                   beta=FALSE,
                   gamma=FALSE)

plot(fit,
     main="Exponential Smoothing")

# 3-Year Moving Average
moving_avg <- filter(sales.ts,
                     rep(1/3,3),
                     sides=2)

# Running Median
median_smooth <- runmed(sales, k=3)

plot(sales,
     type="o",
     main="Running Median Smoothing")

lines(median_smooth)