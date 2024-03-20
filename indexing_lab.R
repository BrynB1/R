# indexing_lab.R
# Bryn Bijur, s1324044
# CS-201
# Spring 2024

# Positive Indexing of Vectors
set.seed(33)
x.vec <- rnorm(6)
x.vec
x.vec[3]
x.vec[c(3, 4, 5)]
x.vec[3:5]
x.vec[c(3, 5, 4)]

# "Negative" Indexing of Vectors
x.vec[-3]
x.vec[c(-3, -4, -5)]
x.vec[-c(3, 4, 5)]
x.vec[-c(3:5)]

# Indexing Matrices
x.mat <- matrix(x.vec, 3, 2)
x.mat
x.mat[2, 2]
x.mat[5]

# More Matrix Indexing
x.mat[2, ]
x.mat[1,2,]
x.mat[,1]
x.mat[,-1]

# Indexing Lists
x.list <- list(x.vec, letters, sample(c(TRUE, FALSE), size = 4, replace = TRUE))
x.list
x.list[[3]]
x.list[3]

# Everything is Exactly the Same as Vector Indexing
x.list[1:2]
x.list[-1]

# But Be Careful!
x.list[[1]]
x.list[[1:2]]

# Indexing with Booleans
x.vec[c(F, F, T, F, F, F)]
x.vec[c(T, T, F, T, T, T)]
pos.vec <- x.vec > 0
pos.vec
x.vec[pos.vec]
x.vec[x.vec > 0]

# Indexing with Names
names(x.list) <- c("normals", "letters", "bools")
x.list[["letters"]]
x.list$letters
x.list[c("normals", "bools")]
