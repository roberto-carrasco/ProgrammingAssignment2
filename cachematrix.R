## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    cch <- NULL
    set <- function(y) {
        x <<- y
        cch <<- NULL
  }
  
    get <- function() x
    set_Matrix <- function(inverse) cch <<- inverse
  
    get_inverse <- function() cch


    list(set = set, get = get,
        set_Matrix = set_Matrix, get_inverse = get_inverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 
    cch = x$get_inverse()
  
  
    if (!is.null(cch)){
     
    message("getting cached data")
    return(cch)
  }
  
  # otherwise, calculates the inverse 
  mat.data = x$get()
  cch = solve(mat.data, ...)
  
  # sets the value of the inverse in the cache
  x$set_Matrix(cch)
  
  return(cch)
}
        

