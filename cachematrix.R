## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL 
        y <- NULL 
        setmatrix <- function(y) { 
                x <<- y 
                m <<- NULL 
        
        list(setmatrix = setmatrix, getmatrix = getmatrix, 
             setinv = setinv,
             getinv = getinv)
        }
}


## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {

m <- x$getinv() 
                if(!is.null(m)){ 
                        if(x$setmatrix() == x$getmatrix()) { 
                                return(m)
                        }
                      
                        y <- x$getmatrix() 
                        x$setmatrix(y)
                        m <- solve(y, ...)
                        x$setinv(m) 
                        m 
                }
        ## Return a matrix that is the inverse of 'x'
}
