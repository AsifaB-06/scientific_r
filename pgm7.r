# Program 7: Linear and Non-Linear Trends

year <- 2015:2023

sales <- c(120,128,135,142,150,
           158,165,172,180)

data <- data.frame(year, sales)

# Linear trend
linear_model <- lm(sales ~ year,
                   data=data)

summary(linear_model)

plot(year, sales,
     type="o",
     main="Sales Trends",
     xlab="Year",
     ylab="Sales")

abline(linear_model)

# Quadratic trend
quad_model <- lm(sales ~ year + I(year^2),
                 data=data)

pred <- predict(quad_model)

lines(year, pred)

# Exponential trend
exp_model <- lm(log(sales) ~ year,
                data=data)

pred_exp <- exp(predict(exp_model))

lines(year, pred_exp)