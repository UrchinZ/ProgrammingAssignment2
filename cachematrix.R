## Cache the Mean of a Vector


## returns a list of function to:
## set and get the value of the matrix
## set and get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinv <- function(matrix_inverse) i <<- matrix_inverse
    getinv <- function() i
    list(set = set, get = get, 
         setinv = setinv,
         getinv = getinv)
}


## Calculate matrix inverse if the inverse has not been calculated

cacheSolve <- function(x, ...) {
    i <- x$getinv()
    if (!is.null(i)){
        message("getting cached matrix inverse")
        return(i)
    }
    matrix <- x$get()
    i <- solve(matrix, ...)
    x$setinv(i)
    i
}
