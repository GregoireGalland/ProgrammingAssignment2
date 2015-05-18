## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#This function will create a matrix, and define 3 others functions:
#get() : Return the matrix
#setinverse() : Compute the inverse of the matrix
#getinvers()) : Return the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    get <- function() x
    setinverse <- function(solve) inverse <<- solve
    getinverse <- function() inverse
    list(get = get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
# This function will return the inverse of the matrix created with the makeCacheMatrix.
# If the inverse is not present in the cache, it will compute it and store it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverse <- x$getinverse()
    if(!is.null(inverse)){
        message("Getting the inverse matrix from cache")
        return(inverse)
    }
    mat<-x$get()
    inverse<-solve(mat,...)
    x$setinverse(inverse)
    inverse
}
