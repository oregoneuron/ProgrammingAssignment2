makeCacheMatrix <- function(x = numeric()) {
	inv <- NULL
	set <- function(y, ...) {
		x <<- matrix(y, ...)
		inv <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) inv <<- inverse
	getinverse <- function() inv
	list(set = set, get = get,
		setinverse = setinverse,
		getinverse = getinverse)
	
}