#14 Load the Iris data set as a list of lists.
#Compute and print the mean and the standard deviation for each of the 4 measurement
#columns (i.e., sepal length and width, petal length and width Compute and print the 
#mean and the standard deviation for each of the 4 measurement columns, separately 
#for each of the three Iris species.


install.packages("dplyr")
library(dplyr)

data(iris)
head(iris)
tail(iris)

iris_grouped <- group_by(iris,Species)
head(iris_grouped)

summary(iris)


summarize(
  iris_grouped,
  mean_sepal_length = mean(Sepal.Length),
  sd_sepal_length = sd(Sepal.Length)
)


summarize(iris_grouped, count = n())

summarize(
  iris_grouped,
  percent = sum(Sepal.Length > 5.5)/n()
)