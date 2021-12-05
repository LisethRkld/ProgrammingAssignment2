## This functions allow to get and cache the inverse of a matrix

## This function Create a vector of functions, them allow to set the matrix and its inverse, also get both of them
##if they are already calculated.

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y){
  x<<- y
  m<<- NULL
  }
get <-function() x 
setinverse<- function(inversa) m<<-inversa
getinverse<- function() m
  list(set=set, get=get,setinverse=setinverse,getinverse=getinverse)
}


## Get the inverse of a matrix and calculate it if it hasn't already.
cacheSolve <- function(x, ...) {
        m<-x$getinverse()
        if(!is.null(m)){
          message("getting cached data")
          return(m)
        }
        data<-x$get()
        m<-solve(data,...)
        x$setinverse(m)
        m
}
