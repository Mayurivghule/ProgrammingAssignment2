## Put comments here that give an overall description of what your
## functions do

## Put comments here that give an overall description of what your
## functions do

## The first function, makeCacheMatrix creates a special “matrix”.


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <- y
    inv <- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

##The following function calculates the inverse of the special “matrix” created with the above function.

cachesolved <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    text("cached data")
    return(inv)
  }
  matrix_to_invert <- x$get()
  inv <- solve(matrix_to_invert, ...)
  x$setinverse(inv)
  inv
}
