# 9.  R Program to Count the Number of Elements in a Vector.

# Example 1: Length of a Vector in R Using length()
# create a vector
languages <- c("R", "Swift", "Java", "Python")

# find length of languages vector
length(languages) # 4

# create another vector
numbers <- c(1,5,7,9,12,54)

# find length of numbers vector
length(numbers) # 6

# Example 2: Length of a String in R Using str_length()
# In order to use the str_length() function, we first import the stringr package.

# import stringr package
install.packages("stringr", repos='http://cran.us.r-project.org')
install.packages("stringr")

library(stringr)

string1 <- "Programiz"

# use str_length() of stringr package to find length
result <- str_length(string1)

cat("Total length:", result)