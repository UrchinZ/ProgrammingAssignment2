# Create 3 different vectors.
a1 <- c(3, 2, 8)
a2 <- c(6, 3, 2)
a3 <- c(5, 2, 4)

# Bind the 3 matrices row-wise 
# using the rbind() function.
A <- rbind(a1, a2, a3)

# inverse of matrix
solve_A = solve(A)
print(solve_A)

# test cached object functions
cached_A = makeCacheMatrix(A)
cached_solve_A = cacheSolve(cached_A)
print(cached_solve_A)
solve_A == cached_solve_A

# test set functions
randA <- matrix(rnorm(9), nrow=3)
cached_A = makeCacheMatrix(randA)
is.null(cached_A$getinv())


