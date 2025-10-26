#7. R program to generate random number from standard distributions

#Set the seed for reproducibility
set.seed(123)

#Generate 1000 numbers from a normal distribution
mean_value<-5
sd_value<-2
num_samples<-1000
random_numbers<-rnorm(num_samples,mean=mean_value,sd=sd_value)
print(head(random_numbers))