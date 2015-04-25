## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## m is inverse of the matrix x, 
## setmatrix  getmatrix will set/retrieve the inverse of matrix object x 

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL      
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(matrix) m <<- matrix
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}


## Write a short comment describing this function

## Return a matrix that is the inverse of 'x'
##   First check whether we have a cached inverse matrix m for matrix x
##   return if found
##   If not found, create the object x in global env and cached the inverse of it
##   return it 
##
cacheSolve <- function(x, ...) {
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setmatrix(m)
        m        

}
