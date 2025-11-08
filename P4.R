# 4. Write a R Program to Sample data from a Population.
# Example 1: Sampling data from a Vector
# Create a vector of ages
ages <- c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70)
# Perform simple random sampling of 5 ages
sampled_ages <- sample(ages, size = 5, replace = FALSE)

# Print the sampled ages
print(sampled_ages)
# Example 2: Sampling data from a Lists
# Create a list of favorite colors
favorite_colors <- list("Red", "Blue", "Green", "Yellow", "Purple", "Orange")

# Convert the list into a vector
colors_vector <- unlist(favorite_colors)

# Perform simple random sampling of 2 colors
sampled_colors <- sample(colors_vector, size = 2, replace = FALSE)

# Print the sampled colors
print(sampled_colors)

# Example 3: Sampling Using Data Frames (as a column)

# Create a sample data frame
employees <- data.frame(
  Name = c("John", "Jane", "Jim", "Jill", "Joe", "Janet"),
  Age = c(30, 35, 25, 40, 45, 28),
  Salary = c(50000, 60000, 45000, 70000, 80000, 55000)
)
# Perform simple random sampling of 2 employees
sampled_employees <- employees[sample(nrow(employees), size = 2, 
                                      replace = FALSE), ]
# Print the sampled employees
print(sampled_employees)
