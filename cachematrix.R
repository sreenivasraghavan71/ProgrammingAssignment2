## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inverseMat <<- NULL
matrixCache <<- x
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
if(is.null(inverseMat)){
  inverseMat <<- solve(x)
  matrixCache <<- x
  inverseMat}
else{
  q <- matrixCache==x
  sum1 <- sum(q)
  size1 <- nrow(x)
  size2 <- ncol(x)
  
  if(sum1 == (size1*size2)){
    inverseMat}
  else{
  inverseMat <<- solve(x)
  matrixCache <<- x
  inverseMat
  }  
}
  
}
