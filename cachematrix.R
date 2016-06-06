## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { 
  ram<-NULL       ##for holding null value
  set<-function(y) 
  {
    x<<-y
    ram<<-NULL     #when matrix is assigned new value,we should have null as value
  }
  get<-function() {
    x      #returns what is stored
  }
  inverseofset<-function(inverse)  {
    ram<<-inverse 
  }
  inverseofget<-function() 
  {
    ram
  }
  list(set=get,get=get,inverseofset=inverseofset,inverseofget=inverseofget)  #return the list
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ram <- x$getInverse()
  if (!is.null(ram)) {
    message("getting data")
    return(ram)
  }
  matrix<- x$get()
  inv <- solve(matrix, ...)
  x$setInverse(ram)
  ram
 }
