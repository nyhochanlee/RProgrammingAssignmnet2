# For this assignment, we assume that the matrix supplied is always invertible.
makeCacheMatrix <- function(x = matrix()) { # we take a function with a matrix input
     inv <- NULL # Set up inv variable
     set <- function(y) { # set the value of matrix
           x <<- y
           inv <<- NULL
      }
      get <- function() x # get the value of matrix
      setinverse <- function(inverse) inv <<- inverse # set the value of inverse
      getinverse <- function() inv # get the value of inverse
      list (set = set, get = get, setinverse = setinverse, getinverse = getinverse) # Return a list of set, get, setinverse, getinverse
}
