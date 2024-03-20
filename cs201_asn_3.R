# cs201_asn_3.R
# Bryn Bijur, s1324044
# CS-201
# Spring 2024

#1 pop_density() function
data(state)

pop_density <- function(state_abb) {
  state_index <- match(toupper(state_abb), toupper(state.abb))
  
  if (!is.na(state_index)) {
    density <- round(state.x77[state_index, "Population"] * 1000 / state.x77[state_index, "Area"], 1)
    state_name <- state.name[state_index]
    return(paste(state_name, ": ", density, " people per square mile (1977)"))
  } else {
    return("Invalid state abbreviation.")
  }
}

print(pop_density('NJ'))
print(pop_density('wy'))

#2 Flips() for loop and bar plot
flips <- function() {
  total_flips <- 0
  nheads <- 0
  
  # if nheads becomes 3, we got three 'heads' in a row
  while (nheads < 3) {
    if (sample(c("T", "H"), 1) == "H") {
      nheads <- nheads + 1
    } else {
      # didn't get heads; must reset to 0
      nheads <- 0
    }
    
    total_flips <- total_flips + 1
  } # end while
  
  return(total_flips)
}

#a) for loop
flips_vec <- numeric(1000)

for (i in 1:1000) {
  flips_vec[i] <- flips()
}
flip_counts <- table(flips_vec)
most_frequent <- which.max(flip_counts)
cat("Most frequent number of coin flips to get 3 heads in a row:", most_frequent, "\n")

#b) replicate
flips_vec_replicate <- replicate(1000, flips())
flip_counts_replicate <- table(flips_vec_replicate)
barplot(flip_counts, main = "Occurrences of Number of Coin Flips", 
        xlab = "Number of coin flips", ylab = "Occurrences")

#c) Approximation of the probability of getting 3 heads in a row in just 3 coin tosses
approx_probability <- flip_counts[3] / sum(flip_counts)
cat("Approximation of the probability:", approx_probability)

