## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { ## create a matrix object x

    cch <- NULL
    set <- function(y) {
        x <<- y             
        cch <<- NULL
  }
  
    get <- function() x ## return the matrix 
    set_Matrix <- function(inverse) cch <<- inverse 
  
    get_inverse <- function() cch


    list(set = set, get = get,
        set_Matrix = set_Matrix, get_inverse = get_inverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 
    cch = x$get_inverse()   ##gets the inverse if it has been already calculated
  
  
    if (!is.null(cch)){   ## check if cacheSolve was run before
     
    message("getting cached data")
    return(cch)
  }
  
  # otherwise, calculates the inverse 
  mat.data = x$get()
  cch = solve(mat.data, ...)
  
  # sets the value of the inverse in the cache
  x$set_Matrix(cch)
  
  return(cch) ##Return cache
}
        

