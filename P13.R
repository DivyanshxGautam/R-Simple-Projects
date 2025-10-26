#13
install.packages("dplyr")
library(dplyr)

data(iris)
head(iris)
tail(iris)

iris_grouped<-group_by(iris,Species)
head(iris_grouped)

summary(iris)
summarize(iris_grouped,
          mean_sepal_length = mean(Sepal.Length),
          sd_length = sd(Sepal.Length)
)
summarize(iris_grouped,count = n())

summarize(iris_grouped,
          percent = sum(Sepal.Length>5.5)/n()
)