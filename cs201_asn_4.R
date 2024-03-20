# cs201_asn_4.R
# Bryn Bijur, s1324044
# CS-201
# Spring 2024

library(dplyr)
data(state)
#1 Read the file
state.pop <- read.csv("2020_2023_state_region_pop.csv")
str(state.pop)

#2 Create a vector
pct.pop.change <- (state.pop$POPESTIMATE2023 - state.pop$POPESTIMATE2020) * 100 / state.pop$POPESTIMATE2020

#3 Add the pct.pop.change vector as a new column
state.pop$PCTPOPCHG <- pct.pop.change

#4 Output the names of the five states with the greatest percentage increase in population
cat("Top 5 states with the greatest population increase:\n")
top_increase <- head(arrange(state.pop, desc(PCTPOPCHG)), 5)
print(top_increase[, c("NAME", "PCTPOPCHG")])

#5 Output the names of the five states with the greatest percentage decrease in population
cat("\nTop 5 states with the greatest population decrease:\n")
top_decrease <- head(arrange(state.pop, PCTPOPCHG), 5)
print(top_decrease[, c("NAME", "PCTPOPCHG")])

#6 Write a new CSV file
write.csv(state.pop, "pop_change_rev.csv", row.names = FALSE)

#7 Display the change in population density
print(state_pops <- state.x77[, "Population"])
print(state_areas <- state.x77[, "Area"]) 
print(pop_density <- state_pops/state_areas) * 100 

