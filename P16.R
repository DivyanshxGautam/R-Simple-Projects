# Load the built-in mtcars dataset
data(mtcars)

# Display the first few rows
head(mtcars)

# Summary statistics
summary(mtcars)
# Check the structure
str(mtcars)
# Plot mpg (dependent variable) vs wt (independent variable)
plot(mtcars$wt, mtcars$mpg, main = "MPG vs Weight",
     xlab = "Weight (1000 lbs)", ylab = "Miles per Gallon",
     pch = 19, col = "blue")

# Fit a linear regression model
model1 <- lm(mpg ~ wt, data = mtcars)

# View the summary of the model
summary(model1)

# Multiple Linear Regression
model2 <- lm(mpg ~ wt + hp, data = mtcars)

# Model summary
summary(model2)

# Diagnostic plots
par(mfrow = c(2, 2))
plot(model2)

# Example prediction
new_data <- data.frame(wt = c(3, 2.5), hp = c(110, 90))
predicted_mpg <- predict(model2, newdata = new_data)
predicted_mpg

