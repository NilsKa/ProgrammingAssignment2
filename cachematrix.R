## MakeCacheMatrix is a function that creates a matrix and caches its inverse.
## CacheSolve is a function that either creates the inverse of a matrix
## or just recalls it in case it has been cached before.



## makeCacheMatrix is a function that creates a Matrix in the same way the 
## matrix() argument does: content = data; nrow == nrow; ncol == ncol;
## argument of matrix(). It will save itself in the object 'original 
## Matrix'. Furthermore, it will cache its inverse and save it under
## 'CacheMatrix'.

makeCacheMatrix <- function(x = matrix()) {
      originalMatrix <<- x
      CacheMatrix <<- solve(x)
      message("Matrix has been cached...")     
}


## cacheSolve is a function that computes the inverse of a matrix. Thereby,
## it checks whether this Matrix has already been cached by checking the 
## saved objects of makeCacheMatrix.

cacheSolve <- function(x = matrix()) {
      ## Return a matrix that is the inverse of 'x'
      if(exists("CacheMatrix") == TRUE 
         & all(x == originalMatrix) == TRUE) {
            message("getting cached data")
            return(CacheMatrix)       
      } else {
            output <- solve(x)
            message("calculating...")
            return(output)
      }            
}
