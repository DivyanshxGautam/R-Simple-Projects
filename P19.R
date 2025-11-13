# Create data frame
data <- data.frame(
  Gender = c("Male", "Female", "Female", "Male", "Male", "Female"),
  Preference = c("Yes", "No", "Yes", "No", "Yes", "Yes")
)

# View data
print(data)

# Create contingency table
table_data <- table(data$Gender, data$Preference)

# View table
print(table_data)

# Perform Chi-Square test
chi_result <- chisq.test(table_data)

# View results
print(chi_result)

