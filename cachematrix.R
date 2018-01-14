## Calculating the inverse of a matrix

## Caching the Inverse of a Matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(mean) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Returns the inverted matrix

cacheSolve <- function(x, ...) {m <- x$getsolve()
if(!is.null(m)) {
  message("getting cached data")
  return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setsolve(m)
m ## Return a matrix that is the inverse of 'x'
}
