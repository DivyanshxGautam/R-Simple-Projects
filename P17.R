# Load the dataset
data(mtcars)
head(mtcars)
# Compute correlation matrix for all numeric variables
cor_matrix <- cor(mtcars)

# Display the correlation matrix
print(cor_matrix)
# Install and load corrplot package if not already installed
if(!require(corrplot)) install.packages("corrplot")
library(corrplot)

# Plot correlation matrix
corrplot(cor_matrix, method = "color", type = "upper",
         tl.col = "black", tl.srt = 45,
         addCoef.col = "black", number.cex = 0.7,
         col = colorRampPalette(c("blue", "white", "red"))(200),
         title = "Correlation Plot for mtcars", mar = c(0,0,2,0))
# Convert 'cyl' to a categorical variable (factor)
mtcars$cyl <- as.factor(mtcars$cyl)

# Fit a linear model with mpg depending on weight and cylinder category
ancova_model <- lm(mpg ~ wt + cyl, data = mtcars)

# Summary of model
summary(ancova_model)

# Perform ANOVA
anova(ancova_model)

# Visualization of ANCOVA
if(!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

ggplot(mtcars, aes(x = wt, y = mpg, color = cyl)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "ANCOVA: MPG vs Weight by Cylinder Category",
       x = "Weight (1000 lbs)", y = "Miles per Gallon (mpg)") +
  theme_minimal()
