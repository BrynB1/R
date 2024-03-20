# functions_lab.R
# Bryn Bijur, s1324044
# CS-201
# Spring 2024

#1 Print random variables
rand_elem <- function(vec) {
  random_index <- sample(1:length(vec), 1)
  return(vec[random_index])
}
print(rand_elem(1:6))
print(rand_elem(c('yes', 'no', 'maybe')))
print(rand_elem(v = c(2, 4, 6, 8, 10)))
print(rand_elem(vec = c('A', 'J', 'Q', 'K')))

#2a Count number of even and odds
even_odd_a <- function(nums) {
  even_count <- 0
  odd_count <- 0
  for (num in nums) {
    if (num %% 2 == 0) {
      even_count <- even_count + 1
    } else {
      odd_count <- odd_count + 1
    }
  }
  
  return(c(even_count, odd_count))
}
print(even_odd_a(9:1))
print(even_odd_a(c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)))

#2b Count evens and odds (without a loop)
even_odd_b <- function(nums) {
  even_count <- sum(nums %% 2 == 0)
  odd_count <- length(nums) - even_count
  
  return(c(even_count, odd_count))
}
print(even_odd_b(9:1))
print(even_odd_b(c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)))

