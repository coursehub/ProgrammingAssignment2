##Create the function

makeCacheMatrix <- function(x,r,c) {
matrix(x,r,c)
}

##Create variables
x<-rnorm(9)
r<-3
c<-3
##Pass variables to function to special matrix
my_matrix<-makeCacheMatrix(x,r,c)

##Retrieve inverse of the cache
cacheSolve<- solve(my_matrix)
## Return a matrix that is the inverse of 'x'
