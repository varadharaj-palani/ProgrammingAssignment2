## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function





## The below makeCacheMatrix function creates a special “matrix” object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  I <- NULL
  set <- function(y){
    x <<- y
    I <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) I <<- inverse
  getinverse <- function() I
  list(set = set, get = get , setinverse = setinverse, getinverse = getinverse)
  
}


## Write a short comment describing this function




##  The below cacheSolve function computes the inverse of the special “matrix” returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  
  I <- x$getinverse()
  if (!is.null(I)){
    message("getting cached data")
    return(I)
  }
  data <- x$get()
  I <- solve(data, ...)
  x$setinverse(I)
  I
  
  ## Return a matrix that is the inverse of 'x'
}
