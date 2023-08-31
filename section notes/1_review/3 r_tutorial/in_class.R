# Andie Creel / r tutorial / started: jan 25, 2023

# variable assignment 
a <- 2
b <- 3

# evaluation 
a+b

# -----------------------------------------------------------------------------
# basic data types 
# -----------------------------------------------------------------------------
#numeric -- integer: no decimal points 
myInt_1 <- 1
myInt_2 <- 300

#numeric -- doubles: decimal points 
myNum <- 2.4

# string 
myStr <- "a"
phoebe <- 'cats and dogs'

#logical (boolean): a true/false variable 
myBool_1 <- TRUE
myBool_2 <- (3<4)
myBool_3 <- (3>4)

# -----------------------------------------------------------------------------
# ways to store data 
# -----------------------------------------------------------------------------

#vector: can only be one datatype
myVec_n <- c(4,3,2,1)
myVec_n[2]

#vector of strings 
myVec_s <- c("a", "b", "cats")
myVec_s[2]

# matrix: one datatypes
myMat_n <- matrix(data = c(3,4,5, 7), nrow = 2, ncol = 2)
myMat_n

# data frames: can have multiple data types 
myDF <- as.data.frame(myMat_n)
colnames(myDF)
colnames(myDF) <- c("age", "weight")

#investigate
myDF$age

# create a new column in myDF
myDF$nonsense <- myDF$age + myDF$weight

# -----------------------------------------------------------------------------
# another dataframe example
# -----------------------------------------------------------------------------

#create the data frame 
myBMI <- data.frame(
  gender = c("Male", "Male", "Female", "non-binary"),
  male = c(TRUE, TRUE, FALSE, FALSE), 
  height_in = c(152, 171.5, 162, 200), 
  weight_lb = c(150, 145, 200, 220),
  age = c(45, 27, 30, 25)
)

# reference one column 
myBMI$male #version 1
myBMI[,2] # version 2a
myBMI[1:4,2] # version 2b

# referencing a row 
myBMI[1,]

# referencing a single cell and changing it's value (version 1)
myBMI$height_in[1]
myBMI$height_in[1] <- 60

#version 2
myBMI[1,3]

# -----------------------------------------------------------------------------
# Functions loops an if statements 
# -----------------------------------------------------------------------------

myF <- function(x){
  y <- x - x^2
  return(y)
}

myF(x = .5)
myF(x = .7)
myF(.25)

myF_2 <- function(x, z){
  y <- z + x - x^2
  return(y)
}

#these are all the same
myF_2(.5, 2)
myF_2(x = .5, z = 2)
myF_2(z = 2, x = .5)

# -----------------------------------------------------------------------------
# loops
# -----------------------------------------------------------------------------


# simple 
for(i in 1:4){
  print(i)
}

# combination of loops and function

for (i in -2:6) {
  y <- myF(x = i/4)
  print(y)
}

# -----------------------------------------------------------------------------
# if statements 
# -----------------------------------------------------------------------------

for (i in 1:length(myBMI$male)) {
  if(myBMI$male[i] == TRUE){
    myBMI$age_new[i] <- myBMI$age[i] - 3
  }else{
    myBMI$age_new[i] <- myBMI$age[i]
  }
  
}










