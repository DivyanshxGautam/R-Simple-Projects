# Install & load necessary packages
install.packages(c("dplyr", "ggplot2", "FSelector", "data.table"))
library(dplyr)
library(ggplot2)
library(FSelector)
library(data.table)

# 1. Load dataset
url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/autos/imports-85.data"

col_names <- c("symboling", "normalized_losses", "make", "fuel_type", "aspiration", 
               "num_doors", "body_style", "drive_wheels", "engine_location", "wheel_base", 
               "length", "width", "height", "curb_weight", "engine_type", "num_cylinders", 
               "engine_size", "fuel_system", "bore", "stroke", "compression_ratio", 
               "horsepower", "peak_rpm", "city_mpg", "highway_mpg", "price")

auto <- fread(url, na.strings = "?", col.names = col_names)

# 2. Quick look at data
str(auto)
summary(auto)

# 3. Handle missing values (simplest way: remove rows with NA)
auto <- na.omit(auto)

# 4. Convert numeric columns
auto$price <- as.numeric(auto$price)
auto$horsepower <- as.numeric(auto$horsepower)
auto$engine_size <- as.numeric(auto$engine_size)

# 5. Feature selection using Information Gain
# Discretize price into 3 classes (Low, Medium, High)
auto$price_class <- cut(auto$price, breaks=3, labels=c("Low","Medium","High"))

# Calculate information gain
info_gain <- information.gain(price_class ~ ., data = auto)

# Sort features by importance
info_gain <- info_gain[order(-info_gain$attr_importance), , drop = FALSE]
print(info_gain)

# 6. Visualize Information Gain
info_df <- data.frame(Feature = rownames(info_gain), InfoGain = info_gain$attr_importance)

ggplot(info_df, aes(x = reorder(Feature, InfoGain), y = InfoGain)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  coord_flip() +
  labs(title = "Information Gain of Features", x = "Feature", y = "Info Gain") +
  theme_minimal()
