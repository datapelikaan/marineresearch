
# 1.
# Standard error for the mean

mydata <- c(0.1, 1.9, 2,9.3, 3.1, 5)




standard_error <- function(x){
  
  sd(x) / sqrt(length(x))
  
}

standard_error(x = mydata)






# 2.
# SD en SE

se_and_sd <- function(x){
  
  stopifnot(all(is.numeric(x)))
  
  se_out <- standard_error(x)
  sd_out <- sd(x)
  
return(
  list(
    se = se_out,
    sd = sd_out
  )
)
  
}

se_and_sd(mydata)


se_and_sd("text!")







# 3. 
# Print the time

the_time_now <- function(){
  cat(paste("The current time is: ", format(Sys.time())))
}

# the function call - executes the code
the_time_now()

# the function definition - shows the code
the_time_now


also_the_time_now <- the_time_now
also_the_time_now()



