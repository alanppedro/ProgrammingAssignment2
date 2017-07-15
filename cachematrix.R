## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(0)){
  m <- NULL
  x <<- x
  set <- function(y){
    x <<- y
    m <<- null
  }
  get <- function() x
  getInversedMatrix <- function() m
  setInversedMatrix <- function(InversedMatrix) {
    m <<- InversedMatrix
  } 
  list(set = set, get = get, getInversedMatrix = getInversedMatrix, setInversedMatrix = setInversedMatrix)
}

## Write a short comment describing this function

cachesolve <- function(x, ...){
  m <- x$getInversedMatrix()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)    
  }
  dataMatrix <- x$get()
  m <- solve(dataMatrix, ...)
  x$setInversedMatrix(m)
  m
}


## Sexta Função 



## Sétima Função 

