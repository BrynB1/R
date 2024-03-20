# Creating vectors
numeric_vector <- c(1, 2, 3, 4, 5)
character_vector <- c("apple", "banana", "orange")
logical_vector <- c(TRUE, FALSE, TRUE)

# Check types
is_numeric <- is.numeric(numeric_vector)
is_character <- is.character(character_vector)
is_logical <- is.logical(logical_vector)

# Find vector length
vector_length <- length(numeric_vector)

# Check data type
data_type <- typeof(numeric_vector)

# Indexing vectors
element_at_index_2 <- numeric_vector[2]
selected_elements <- numeric_vector[numeric_vector > 2]

# Apply conditions using a loop
selected_elements_loop <- numeric_vector[numeric_vector > 2]

# Apply conditions using vectorized functions
selected_elements_vectorized <- numeric_vector[which(numeric_vector > 2)]

# Count occurrences without using table()
count_occurrences <- sum(numeric_vector == 3)

# Use the paste() function
combined_string <- paste(character_vector, collapse = ", ")

# Use sapply
squared_vector <- sapply(numeric_vector, function(x) x^2)

# Matrix notation to get columns
matrix_data <- matrix(c(1, -2, 3, -4, 5, 6), ncol = 2)
condition_met_columns <- matrix_data[, matrix_data[1, ] > 0]

# Extract sub-dataframes
original_dataframe <- data.frame(column_name = c(5, 15, 8))
sub_dataframe <- original_dataframe[original_dataframe$column_name > 10, ]

# Function definition with multiple arguments
calculate_sum <- function(a, b) {
  return(a + b)
}

# Compose two functions
square_of_sum <- function(a, b) {
  return((a + b)^2)
}

# Compose functions
result <- square_of_sum(calculate_sum(2, 3), 4)

# Use ifelse
result_vector <- ifelse(numeric_vector > 3, "Greater than 3", "Less than or equal to 3")

