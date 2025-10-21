#5.Write an R program to get all prime numbers up to a given number. 

find_primes <- function(n) {
  if (n < 2) {
    return(numeric(0))
  }
  
  is_prime <- rep(TRUE, n + 1)
  
  is_prime[1] <- FALSE
  is_prime[2] <- FALSE
  
  for (p in 2:sqrt(n)) {
    if (is_prime[p]) {
      for (i in seq(p*p, n, by = p)) {
        is_prime[i] <- FALSE
      }
    }
  }
  
  primes <- which(is_prime)
  return(primes)
}

number_limit <- 50
prime_numbers <- find_primes(number_limit)

cat("Prime numbers up to", number_limit, "are:\n")
print(prime_numbers)