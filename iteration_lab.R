# iteration_lab.R
# Bryn Bijur, s1324044
# CS-201
# Spring 2024

#1a
v <- vector(mode="numeric", length=10)
i <- 1
while(i < 11){
  v[i] <- (i+2)^2
  i <- i+1
}

#1b
i <- 0
seq <- ''
for(i in 1:49) {
  cat(seq, i %% 2, '\n', sep='')
  seq <- paste(seq, ' ', sep='')
}

#1c
x <- c(2, 5, 3, 9, 8, 11, 6)
div <- as.integer((min(x)+max(x))/2)
for(i in 1:length(x)){
  x <- x %% div + 1
}
print(x)

#2
n <- 3
while (n > 1) {
  print(n)
  if (n %% 2 == 0) {
    n <- n / 2
  } else {
    n <- 3 * n + 1
  }
}
print(1)

