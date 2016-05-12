## Put comments here that give an overall description of what your
## functions do

## this 2 functions stores a matri and solves the inverse matrix
## First function stores and defines functions to set and get the matrix
## Second function solves the matrix to inverse and finally returns it

## Initialize the matrix and define Cache Vectors 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
## define the get and set functions for our matrix  
  get <- function() x
  set_matrix <- function(tosolve) m <<- tosolve
  get_matrix <- function() m
  list(set = set, get = get,
       set_matrix = set_matrix,
       get_matrix = get_matrix)
}



cacheSolve <- function(x, ...) {
## Returns a matrix that is the inverse of 'x' or if its null a phrase
  m <- x$get_matrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
## stores the matrix and solves & stores it.
  matrix <- x$get()
  m <- tosolve(matrix, ...)
  x$set_matrix(m)
## finally returning the inverse matrix stored in "m"
  m
}

