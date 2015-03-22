# For this assignment, we assume that the matrix supplied is always invertible.
cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) { # if the inverse value exists
    message("getting cached data") # we print this message
    return(inv) # and return the existing value
  }
  data <- x$get()
  inv <- solve(data, ...) # When the second argument is missing, the function will return the inverse of data
  x$setinverse(inv) # store the inverse value to "setinverse"
  inv # return the value of inverse
}