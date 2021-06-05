
# 1. Lists
mylist <- list(a=1:10, txt=c("hello","world"), dfr=data.frame(x=c(2,3,4),y=c(5,6,7)))


mylist$a
mylist[["a"]]
mylist[[1]]

mylist[c("a","txt")]





# 2. Lists in practice
lmfit <- lm(disp ~ wt, data = mtcars)

sumfit <- summary(lmfit)


get_r2_lm <- function(object){
  
  stopifnot(class(object) == "lm")
  summary(object)$adj.r.squared
  
}




# 3. sapply
numlis <- list(x=1000, y=c(2.1,0.1,-19), z=c(100,200,100,100))


sapply(numlis, length)

# take first element of each vector
sapply(numlis, function(x)x[1])


sapply(numlis, function(x){
  x[1]
})

sapply(numlis, function(x)x[1])



take_first_element <- function(x){
  x[1]
}
sapply(numlis, take_first_element)

# tries to make a vector (or matrix)
sapply(numlis, take_first_element)

# always list as a result
lapply(numlis, take_first_element)














# 5. 
# split / lapply
data(Orange)

orange_sp <- split(Orange, Orange$Tree)

sapply(orange_sp, function(x)mean(x$circumference))

sapply(orange_sp, function(x)range(x$age))

lapply(orange_sp, function(x)range(x$age))

#


lmfits <- lapply(orange_sp, function(x)lm(circumference ~ age, data = x))

sapply(lmfits, get_r2_lm)





# 6.
# Read multiple files in one step
fns <- list.files("data", pattern = "[.]csv$", full.names = TRUE)

alldata <- lapply(fns, read.csv)

sapply(alldata, nrow)



fns <- c( "data/allometry.csv",  "data/allometry.csv",  "data/allometry.csv")

alldata <- lapply(fns, read.csv)

library(dplyr)

data <- bind_rows(alldata)

group_by() 




