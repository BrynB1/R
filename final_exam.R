#Name & ID: Bryn Bijur, s1324044

#CS-201
#Spring 2024
#Final Exam

#(4 points)
#1. Write at least 2 ways to create the vector v that contains the values
#5, 4, 3, 2, 1 (in that order).
number_vector <- c(5, 4, 3, 2, 1)
number_vector <-c(5:1)

#(4 points)
#2. Write at least 2 ways to see if a variable v is a vector.
is_number <- is.numeric(number_vector)
is_char <- is.character(number_vector)

#(4 points)
#3. Write at least 2 ways to find the number of elements in a vector v.
#(Note: print(v) and cat(v) are NOT acceptable answers for this question.)
vector_length <- length(number_vector)

#(3 points)
#4. What type of data is found in R's built-in data set called Nile?
   #b) water flow

#(2 points)
#5. True or False. For any R vector v, the following statement is a syntax error: 
#print(v[0])
   #a) True

#(2 points)
#6. True or False. For a given vector v of any type with 10 elements, the following 
#statement is a valid way to index v to get selected elements from v into vector w.
#w <- v[c(T,T,T,F,T,F,F,T,T,T)]      # T=TRUE, F=FALSE
   #a) True

#(8 points)
#7. For a vector v that contains 100 numbers that are between 1 and 20, write
#two different ways to show only the elements of v that are less
#than or equal to 10. If you need to, you can generate vector v with 
#a) Using a loop
v <- sample(1:20, 100, replace=TRUE)
elements <- c()
for (element in v) {
  if (element <= 10) {
    elements <- c(elements, element)
  }
}
print(elements)

#b) Using a vector expression
v <- sample(1:20, 100, replace=TRUE)
elements <- v[v <= 10]
print(elements)

#(4 points)
#8. Write code to 'paste' the contents of vector v, 
#into one string "fee, fi, fo, fum". Hint: collapse

v <- c('fee', 'fi', 'fo', 'fum')
result_string <- paste(v, collapse = ', ')
print(result_string)

#(5 points)
#9. Suppose you have the following vector of unknown length:
#Write code to find the number of elements that are "beans" in items.
#The result of your code must be the integer number of elements that
#are "beans".
#Hints: items == 'beans', ifelse() or sum()
items <- c("beans", "eggs", "beans", "bacon", "beans")
beans_count <- sum(items == "beans")
print(beans_count)

#(5 points)
#10. Suppose you have a vector of strings called words:
#Write code to find the total number of characters in all the strings of 
#the words vector. If words contains 'a', 'aardvark' and 'aardvarks', 
#the total number of characters would be 18. 
#Hints: sapply(), nchar, sum()
words <- c('a', 'aardvark', 'aardvarks', 'aardwolf', 'aardwolves')
characters_per_word <- sapply(words, nchar)
total_characters <- sum(characters_per_word)
print(total_characters)

#(4 points)
#11. Using R's built-in matrix called state.x77, write how to get all columns of data
#for 1) the state of Alabama and for 2) the state of Wyoming.
alabama_data <- state.x77["Alabama", ]
wyoming_data <- state.x77["Wyoming", ]
print(alabama_data)
print(wyoming_data)

#(3 points)
#12. Using R's built-in matrix called state.x77, write how to get the column of life
#expectancy (Life Exp) for all states.
alabama_life_expectancy <- state.x77["Alabama", "Life Exp"]
wyoming_life_expectancy <- state.x77["Wyoming", "Life Exp"]
print(alabama_life_expectancy)
print(wyoming_life_expectancy)

#(3 points)
#13. Using R's built-in data frame called mtcars, write how to get all
#observations (rows) where mpg is greater than or equal to 30.
data_mtcars <- mtcars
high_mpg<- subset(data_mtcars, mpg >= 30)
print(high_mpg)

#(2 points)
#14. True of False. Each named column of the following data frame is a vector.

#explorers <- data.frame("ID" = 1:3, 
#                        "Age" = c(50, 30, 60), 
#                        "Name" = c("Indiana Jones",
#                                   "Dora T. Explorer",
#                                   "Leif L. Erikson"))
#a) True

#(5 points)
#15. Write the definition of a function called middle_of_three that takes 3 _different_
#numeric values as inputs and returns the value that is between the max value and 
#the min value.

# Complete this code.
middle_of_three <- function(n1, n2, n3) {
  max_val <- max(n1, n2, n3)
  min_val <- min(n1, n2, n3)
  middle_val <- n1 + n2 + n3 - max_val - min_val
  return(middle_val)
}
middle_of_three(11, 12, 3)     # returns 11
middle_of_three(11, 18, 12)    # returns 12
middle_of_three(1, 18, 12)     # returns 12

#(3 points)
#16. Using function composition, reduce the following two lines of code to one line of 
#R code. Omit comments. Your answer must compose the sample and ifelse functions.

#flip <- sample(1:0, 1)           # return 1 or 0 at random
#ifelse(flip == 1, 'H', 'T')      # return 'H' if 1, or 'T' if 0
result <- ifelse(sample(1:0, 1) == 1, 'H', 'T')

#(4 points)
#17. Use the ifelse() function to assign NA to all elements of v below that are negative.
#Positive elements of v and zero will remain unchanged. The elements of v
#after ifelse() must be 

#[1] NA NA NA NA NA NA NA NA NA NA  0  1  2  3  4  5  6  7  8  9 10
v <- c(-10:10)
result <- ifelse(v < 0, NA, v)
print(result)







