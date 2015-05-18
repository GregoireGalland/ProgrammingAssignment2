## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#This functoin will 
makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    #set <- function(y){
    #    x <<- y
    #    inverse <<-NULL
    #}
    get <- function() x
    setinverse <- function(solve) inverse <<- solve
    getinverse <- function() inverse
    list(get = get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

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
