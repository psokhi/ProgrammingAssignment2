##HOW TO USE THE FUNCTIONS:
## > test_matrix <- matrix(1:4,2,2)
## > inv <- makeCacheMatrix()
## > inv(test_matrix)

makeCacheMatrix <- function(){
  cachematrix <- matrix()
  cacheresult <- matrix()
  
  cacheSolve <- function(arg_matrix) {
    if (!(dim(cachematrix)==dim(arg_matrix)
          && all(cachematrix==arg_matrix))){
      print ("Solving new matrix")
      inv <- solve(arg_matrix)
      cachematrix <<- arg_matrix
      cacheresult <<- inv
    }else {print ("Using Cache")}
    cacheresult
  }
}
