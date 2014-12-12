## This set of two functions cache the inverse of a matrix
## Programming assignment of Coursera Course: R Programming
## Submitted by: Ahsen Parwez

## This function creates a list that contains functions for the following:
## First set and then get the matrix
## First set and then get inverse of the above matrix

makeCacheMatrix <- function(x = matrix()) {
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


## This function calcultes inverse of the matrix

cacheSolve <- function(x = matrix()) {
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
