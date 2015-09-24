## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function (x = matrix()) {
        cache <- NULL  # Default the value of cached value to NULL
        set <- function (y) {
                x <<- y
                cache <<- NULL
        }  # create the matrix in working environment
        get <- function() x # get the value of the matrix
        setInverse <- function (inverse)  # set the inverted matrix
                cache<<- inverse
        getInverse <- function() cache  # get the inverted matrix
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         # returned a matrix that is the inverse of x 
        cache <- x$getInverse() # return inverted matrix if exists
        if(!is.null(cache)) {
                message("getting cached data") # print comment and skip the calcuation
                return(cache)
        }  
        matrix <- x$get()  # create matrix if it does not exist
        cache <- solve(matrix, ...)  # return the inverted matrix
        x$setInverse(cache) # set the value of matrix in cache
        cache  # return cached value of matrix
}



