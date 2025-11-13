# Load iris dataset
data(iris)
head(iris)
str(iris)
# Box plot for Sepal.Length
boxplot(iris$Sepal.Length,
        main="Box Plot of Sepal.Length",
        col="lightblue",
        horizontal=TRUE)

# Box plot for all numeric variables
boxplot(iris[,1:4], main="Box Plot for All Numeric Features", col=rainbow(4))

plot(iris$Sepal.Length, iris$Sepal.Width,
     main="Scatter Plot: Sepal Length vs Sepal Width",
     xlab="Sepal Length",
     ylab="Sepal Width",
     pch=19,
     col=iris$Species)
legend("topright", legend=levels(iris$Species), col=1:3, pch=19)

# Boxplot for Petal.Length with outliers
boxplot(iris$Petal.Length,
        main="Petal Length Box Plot with Outliers",
        col="orange",
        horizontal=TRUE)

# Identify outliers programmatically
outliers <- boxplot.stats(iris$Petal.Length)$out
print(outliers)


hist(iris$Sepal.Length,
     main="Histogram of Sepal Length",
     xlab="Sepal Length",
     col="skyblue",
     border="black")

species_count <- table(iris$Species)

barplot(species_count,
        main="Number of Iris per Species",
        col=rainbow(length(species_count)),
        border="black")

pie(species_count,
    main="Pie Chart of Iris Species",
    col=rainbow(length(species_count)))

install.packages("plotrix")
library(plotrix)

# 3D Pie Chart
pie3D(species_count,
      main="3D Pie Chart of Iris Species",
      explode=0.1,
      col=rainbow(length(species_count)),
      labelcex=1)

install.packages("plotly")
library(plotly)
# Numeric columns from iris
x <- iris$Sepal.Length
y <- iris$Sepal.Width
fig <- plot_ly(
  x = ~x,
  y = ~y,
  type = "histogram2d",
  colorscale = "Viridis"   # colorful
)

fig <- fig %>% layout(
  title = "3D Histogram of Sepal Length vs Sepal Width",
  xaxis = list(title = "Sepal Length"),
  yaxis = list(title = "Sepal Width")
)

fig  # Display interactive 3D histogram

