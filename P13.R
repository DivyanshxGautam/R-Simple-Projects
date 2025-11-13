# 13. Read the following file formats in Python/R:
# • Comma-separated values  • XLSX • ZIP • Plain Text (txt) • JSON • XML • HTML
# • Images • Hierarchical Data Format • PDF • DOCX • MP3

# Check current working directory
getwd()

# Create a new folder for your personal work space
dir.create("personal_workspace")

# Set the working directory to that folder
setwd("personal_workspace")

# Confirm
getwd()


data <- read.csv("sample.csv")
print(data)

# number of columns and rows.
data <- read.csv("input.csv")
print(is.data.frame(data))
print(ncol(data))
print(nrow(data))

# Install latest JDK 64 Bit f i rst.
install.packages("xlsx")
# Verify and Load the "xlsx" Package
# Use the following command to verify and load the "xlsx" package.
# Verify the package is installed.
any(grepl("xlsx",installed.packages()))
# Load the library into R work space.
library("xlsx")

# Read the first worksheet in the file input.xlsx.
data <- read.xlsx("input.xlsx", sheetIndex = 1)
print(data)


# The XML file is read by R using the function xmlParse(). 
# It is stored as a list in R. 
# Load the package required to read XML files.
install.packages("XML")
library("XML") 
# Also load the other required package. 
library("methods") 
# Give the input file name to the function. 
result <- xmlParse(file = "input.xml") 
# Print the result. 
print(result)

# Install rjson Package
# In the R console, you can issue the following command to install the rjson package. 
install.packages("rjson")

#Read from Doc Created..
library(rjson)
# Read the file as text
json_text <- paste(readLines("input.json"), collapse = "")

# Parse the JSON
data <- fromJSON(json_text)

# Print the result
print(data)


