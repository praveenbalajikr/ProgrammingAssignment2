

## Create a special matrix object via makeCacheMatrix function that can inverse its own cache

makeCacheMatrix <- function(x = matrix()) {
## returns a list of functions that sets and gets a matrix & set an inverse and get the inverse to input into cacheSolve function
inv=NULL
set=function(y){
x<<-
inv<<-NULL
}
Get=function()x
Setinv=function(Inverse)Inv<<-Inverse
Getinv=function()Inv
list(Set=Set,Get=Get,Setinv=Setinv,Getinv=Getinv)
}


## cacheSolve function gets the input from makeCacheMatrix function, checks if the input already has the inverse calculated else calculates the inverse

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
Inv-x$Getinv()
## If the inverse had already been calculated
if(!is.null(Inv){
message("Retrieving Cached Data")
return(Inv)
}
## Calculates the inverse if not calculated
mat.data=x$Get()
Inv=solve(mat.data,...)
## Setinv function provides the value of inverse calculated in cache
x$Setinv(Inv)
return(Inv)
}
