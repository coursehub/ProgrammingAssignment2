##Create the function

makeCacheMatrix <- function(x = matrix()) {
	m <-NULL
	set <- function(y)
	{
		x <<- y
		m <<- NULL
	}
	get <- function() x
    
    setinv <-function(solve) m <<- solve
    getinv <-function() m
    ##Pass variables to function to special matrix
    ## m <- matrix (c(-2, -4, 2, 2),4 4)
    ## x <-makeCacheMatrix(m)
    ##Get and set the list
    list(set = set, get = get,
         setinv = setinv,
         getinv, getinv)
}
	## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...){
	##get the inverse
	m <- x$getinv()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}

	data <-x$get()
	m <-solve(data, ...)
	x$setinv(m)
	m
	##Retrieve inverse of the cache
}
