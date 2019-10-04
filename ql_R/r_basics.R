# Quicklearn basic programming and R

### declare working directory first
### If you wanna use terminal within R studio, see Tools -> Terminal -> Move Focus to Terminal 
pwd <- getwd() # get current directory
if(pwd != "/Users/LOng/econ/quicklearn/ql_R"){
  setwd('econ/quicklearn/ql_R/')
}
rm(pwd)


#### basic programming
### calculation
print(10+5)
print(10-5)
print(10*5)
print(10/5)
print(10^5)
print(11%/%5)
print(11%%5) # 5*2+1=11

## some built-in math functions
sqrt(4);abs(-10);exp(3);log(27);round(11.576, 2);

### variables(objects)
x <- 5 # substitution
print(x)
x <- y <- 6 # substitution at the same time
print(x);print(y)
y <- 7 # different from other lang
print(x)
objects()
rm(y)
print(y) # no objects named y

str(x) # type/structure of variable x

## others(not numeric) can be passed to variables
strings <- "abc";print(strings)
empty <- c();print(nothing)
na <- NA;print(na) #not abailable
nan <- 0/0;print(nan) #not a number
infinity <- 1/0;print(infinity)

# true or false
t <- TRUE;print(TRUE)
f <- FALSE;print(FALSE)
# date and characters
date <- "2012/08/15";print(is.character(date))
date <- as.Date(date);print(date);print(is.character(date))

### vector: you can handle multiple data(num, cha, logical etc) as one object

## how to make a vector

# make a vector arbitrary
x <- c(1, 2, 3, TRUE);print(x) # vector can include only data of same type
# vector from n to m
print(1:5)
# replication of sequence with specified length
print(rep(1:3, length=8))
# sequence with paticular width
print(seq(1, 10, length=5))



## how to access to the element of a vector
x <- 1:10

# specify the index
print(x[3])
x[3] <- 12;print(x)

# multiple indice
print(x[c(1, 8)])

# access by conditions
print(x[x < 7])
print(x[x < 7 & x > 3])



## calculation of vectors
# same length
c(1, 2, 3) + c(4, 5, 6)
# different length(one is lenght 1)
c(1, 2, 3) - 1


## some useful functions
x <- 1:10
sum(x)
mean(x)
var(x)
max(x)
min(x)

replace(x, c(1, 2), c(10, 9))
y <- 11:20
c(x, y)
append(x, 11)



### matrix: objects that have two dim indice as one in mathematics

## make a matrix from a vector
x <- matrix(1:6, nrow=2, ncol=3)
print(x)

## access to an element of a matrix
print(x[1, 2])
print(x[, 2])
print(x[1, ])


## make a matrix by merging vectors
# verical(byrow) merge
x <- rbind(c(1,2,3), c(4,5,6))
print(x)
# horizontal(bycol) merge
x <- cbind(c(1,2,3), c(4,5,6))
print(x)

## calculation of matrix
a <- matrix(1:4, 2, 2)
b <- matrix(0:3, 2, 2)

a * b # product of element by element
a / b 
a %*% b # matrix product
a+b - a %*%b

## useful functions
diag(3) # identity matrix
diag(1:3)
t(a) # transpose
solve(a) # a^-1
det(a) # determinant
z <- eigen(a) # eigenvalues and eigenvectors
print(z$values)
print(z$vectors[, 1])
print(z$vectors[, 2])

dim(a) # dimension of matrix
nrow(a)
ncol(a)

mean(x[1,])
apply(x, MARGIN=1, sum)


### list: object that can contain different types of objects

x <- list(1:5, list("It's my list.", c(T, F, T)), matrix(1:6, 2, 3))
print(x)

## how to access
str(x[1]) # part of the list
str(x[[1]]) # element


## objects include function, vector, matrix, list, data.frame, etc
## i.e., you can name above things as you want


### functions and programming
## conditional branch
x <- 1
if (as.numeric(x) && x == 1) {
  print('x is 1')
}else{
  print('x is not 1')
}

if (is.character(x)) {
  print('x is character')
}else{
  print('x is not character')
}

# & and |(operator)
x <- 3;y <- 'cha'
print(is.numeric(x) && is.character(y))
print(is.numeric(x) && is.numeric(y))
print(is.numeric(x) || is.numeric(y))


## loop
for (i in 1:10) {
  print(i)
  # if (i == 5) {
  #   break;
  # }
}

while (x <= 5) {
  x <- x + 1
}
print(x)

## function
## paticular process for given inputs that might return outputs

adding <- function(x, y){
  z <- x + y
  return(z)
}
adding(5, 9)

mean(1:10) #built-in function


################ Hands-on Task
### Remove all the existing objects using the objects() and rm()


## Hint
objects() # vector of the name of obj
a <- 0
rm(a)
print(a) # what happens?
