## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inverseMat <<- NULL        ## Initialization of inverse MAtrix
matrixCache <<- x         ## Caching the Original Matrix
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
if(is.null(inverseMat)){  ## Checking whether the inverse of given matrix has been calculated  
  inverseMat <<- solve(x)  ## If not compute and store
  matrixCache <<- x
  inverseMat}
else{
  q <- matrixCache==x
  sum1 <- sum(q)
  size1 <- nrow(x)
  size2 <- ncol(x)
  
  if(sum1 == (size1*size2)){  ## Check whether given matrix is same as cached matrix
    inverseMat}               ## If yes return Cached Inverse of given matrix
  else{
  inverseMat <<- solve(x)  ## If no, compute inverse and store it in cache
  matrixCache <<- x
  inverseMat
  }  
}
  
}
