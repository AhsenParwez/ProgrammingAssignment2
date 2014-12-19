## This set of two functions cache the inverse of a matrix
## Programming assignment of Coursera Course: R Programming
## Submitted by: Ahsen Parwez


makeCacheMatrix <- function(x = matrix()) {
  
  ## This function creates a list that contains functions for the following:
  ## 1. First set and then get the matrix
  ## 2. Then set and then get inverse of the above matrix
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}



cacheSolve <- function(x = matrix()) {
  
  ## This function calcultes inverse of the matrix
  ## It first checks whether the inverse has been calculated.
  ## If calculated, it obtains inverse from the cache.
  ## If not, it calculates inverse and sets the value of inverse
  
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinv(m)
  m
}
