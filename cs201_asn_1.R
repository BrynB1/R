# cs201_asn_1.R
# Bryn Bijur, s1324044
# CS-201
# Spring 2024

#1
new_vector <- c(1, "one", 2, "two", 3, "three")
print(new_vector)
#The output shows the numbers in quotes because the vector made all the inputs into strings.
int_vector <- c(1, 1.5, 2, 2.5)
print(int_vector)
#The output makes all the numbers as decimals for consistency.

#2
items <- c("spam", "eggs", "beans", "bacon", "sausage")
print(items)
test_items <- items[-3]
print(test_items)
#Removes beans from the item list
no_spam <- items[-1]
print(no_spam)
more_spam <- items[c(1, 2, 5, 1, 1)]
print(more_spam)
added_items <- c(items, "lobster")
print(added_items)

#3
tic_tac_toe_1 <- matrix(c("X", "O", "X", "O", "X", "O", "X", "O", "X"), nrow = 3, ncol = 3)
tic_tac_toe_2 <- c("X", "O", "X", "O", "X", "O", "X", "O", "X")
dim(tic_tac_toe_2) <- c(3, 3)
print(tic_tac_toe_1)
print(tic_tac_toe_2)

#4
#Roll dice 1
die1 <- sample(1:6, 1000, replace = TRUE)
#Roll dice 2
die2 <- sample(1:6, 1000, replace = TRUE)
#Find the sum
dice_sums <- die1 + die2
#Create a table of sums
sum_counts <- table(dice_sums)
#Plot the table
barplot(sum_counts, xlab = "Dice Sums", ylab = "Occurencies")

