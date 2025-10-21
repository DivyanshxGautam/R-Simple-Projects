#3. Write a R program to get the first 10 Fibonacci numbers. 
fibonacci <- function(n) {
  if (n <= 0) {
    return(numeric(0))
  }
  if (n == 1) {
    return(c(0))
  }
  fib_sequence <- c(0, 1)
  while (length(fib_sequence) < n) {
    last_two <- tail(fib_sequence, 2)
    next_fib <- last_two[1] + last_two[2]
    fib_sequence <- c(fib_sequence, next_fib)
  }
  return(fib_sequence)
}

num_fibs <- 10

result <- fibonacci(num_fibs)

cat("The first", num_fibs, "Fibonacci numbers are:\n")
print(result)
