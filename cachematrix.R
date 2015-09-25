## Programming Assignment 2

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  mdatinv <- NULL
  mdat <- x
  list(mdat=mdat,mdatinv=mdatinv)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix 
## If the inverse has already been calculated (and the matrix has not changed), then the 
## cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  if(!is.null(x$mdatinv)){
    message("getting inverse matrix")
  } else {
    message("calculating inverse matrix")
    x$mdatinv<<-solve(x$mdat)
  }
  invisible(x$mdatinv)
}
