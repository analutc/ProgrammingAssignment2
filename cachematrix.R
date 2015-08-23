## Write a short comment describing this function
## funcion del vector y su inverso
makeCacheMatrix <- function(x = matrix()) {
  inv = NULL
  set = function(y) {
    x <<- y
    inv <<- NULL
  }
  get = function() x
  setinv = function(inverse) inv <<- inverse 
  getinv = function() inv
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv = x$getinv()
  if (!is.null(inv)){
    return(inv)
  }
  mydata = x$get()
  inv = solve(mydata, ...)
  x$setinv(inv)
  
  return(inv)
  ## Return a matrix that is the inverse of 'x'
}